// IMPORTS FROM PACKAGES
const express = require("express");
const dotenv = require("dotenv");
const cors = require("cors");

// IMPORTS FROM FILES
const authRoute = require("./routes/authRoutes");
const dbconnect = require("./config/db");

// INITIALIZATIONS
const app = express();
const PORT = 3000;

// CONFIGURATIONS
dotenv.config();
dbconnect();

// MIDDLEWARES
app.use(cors());
app.use(express.json());
app.use("/api/admin", authRoute);

// STARTING SERVER
app.listen(PORT, () => {
  console.log(`server listening on port ${PORT}`);
});
