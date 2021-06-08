var express = require('express');
var router = express.Router();
var isLoggedIn = require("../middleware/routeprotectors").userIsLoggedIn;
var {getRecentPosts, getPostById} = require('../middleware/postsmiddleware');
var db = require("../conf/database");
/*GET home page.*/

router.get('/', getRecentPosts, function(req, res, next) {
  res.render('index',{title: "TPa App"});
 });
 router.get('/login',(req, res, next) => {
  res.render("login",{title: "Log In"});
 });
 router.get('/registration',(req, res, next) => {
  res.render("registration",{title: "Register"});
 });
 router.use('/postimage',isLoggedIn);
 router.get('/postimage',(req, res, next) => {
  res.render("postimage",{title: "Post an Image"});
 });
 router.get('/imagepost',(req, res, next) => {
  res.render("imagepost",{title: "Create a Post"});
 });

 router.get("/posts/:id(\\d+)",getPostById,(req, res, next) => {
   res.render("imagepost", { title: `Post ${req.params.id}` });


 });
 
module.exports = router;