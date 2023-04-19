const jwt = require("jsonwebtoken");

let generateToken = (id) => {
  return jwt.sign({ id }, process.env.JWT_SECRET);
};

module.exports = generateToken;
