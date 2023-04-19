const express = require("express");

const route = express.Router();

const {
  loginUser,
  signUpUser,
  getUserData,
} = require("../controllers/authController");
const auth = require("../middlewares/auth");

route.post("/login", loginUser);
route.post("/register", signUpUser);
route.get("/", auth, getUserData);

module.exports = route;
