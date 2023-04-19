const asyncHandler = require("express-async-handler");
const User = require("../models/userModel");
const generateJWTToken = require("../config/generateToken");
const bcrypt = require("bcryptjs");

//  SIGN UP
const signUpUser = asyncHandler(async (req, res) => {
  const { name, email, password, confirm_password } = req.body;

  if (!name) {
    res.status(400).json({ msg: "Name is required!" });
  }
  if (!email) {
    res.status(400).json({ msg: "Email is required!" });
  }
  if (!password) {
    res.status(400).json({ msg: "Password is required!" });
  }
  if (!confirm_password) {
    res.status(400).json({ msg: "Please confirm the password!" });
  }
  if (password !== confirm_password) {
    res
      .status(400)
      .json({ msg: "Password and Confirm password must be same!" });
  }

  const isUserExist = await User.findOne({ email });

  if (isUserExist) {
    res.status(400).json({ msg: "user with this email already exists" });
  }

  const salt = await bcrypt.genSalt(12);
  enc_pass = await bcrypt.hash(password, salt);

  const user = await User.create({
    name,
    email,
    password: enc_pass,
  });

  if (user) {
    res.status(201).json({
      msg: "User Registered Successfully",
    });
  } else {
    res.status(400).json({ msg: "Could not create user." });
  }
});

//  LOGIN
const loginUser = asyncHandler(async (req, res) => {
  const { email, password } = req.body;
  const user = await User.findOne({ email });
  if (user && (await user.matchPass(password))) {
    res.json({
      _id: user._id,
      email: user.email,
      name: user.name,
      token: generateJWTToken(user._id),
    });
  } else {
    res
      .status(400)
      .json({ msg: "User not found. please check email and password" });
  }
});

// GET USER DATA
const getUserData = asyncHandler(async (req, res) => {
  const user = await User.findById(req.user);
  res.json({ ...user._doc, token: req.token });
});

module.exports = { loginUser, signUpUser, getUserData };
