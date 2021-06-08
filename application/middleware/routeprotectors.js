const {successPrint, errorPrint} = require("../helpers/debug/debugprinters");
const routeProtectors = {};

//**express-recv-request -> mw1 -> mw2 -> mw3 -> ...-> mWN -> router.HTPPVERB
routeProtectors.userIsLoggedIn = function(req, res, next){
    if(req.session.username){
        successPrint('User is logged in');
        next();

    }else{
        errorPrint('user is logged in!');
        req.flash('error', 'You must be logged in to create a Post!');
        res.redirect('/login');

    }

}


module.exports = routeProtectors;