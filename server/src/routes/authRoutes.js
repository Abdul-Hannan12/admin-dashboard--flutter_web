const express = require("express");

const route = express.Router();

const {
  loginAdmin,
  signUpUser,
  getUserData,
  isTokenValid,
} = require("../controllers/authController");
const auth = require("../middlewares/auth");

route.post("/login", loginAdmin);
route.post("/register", signUpUser);
route.get("/", auth, getUserData);
route.post("/tokenIsValid", isTokenValid);

module.exports = route;
