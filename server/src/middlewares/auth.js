const jwt = require("jsonwebtoken");
const asyncHandler = require("express-async-handler");

const auth = asyncHandler(async (req, res, next) => {
  const token = req.header("x-auth-token");
  if (!token) {
    return res.status(401).json({ msg: "No auth token, Access denied" });
  }

  const verified = jwt.verify(token, process.env.JWT_SECRET);
  if (!verified) {
    return res
      .status(401)
      .json({ msg: "Token Verification Failed! Authorization Denied." });
  }

  req.user = verified.id;
  req.token = token;

  next();
});

module.exports = auth;
