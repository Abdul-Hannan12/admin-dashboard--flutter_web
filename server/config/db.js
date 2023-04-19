const mongooge = require("mongoose");

const dbconnect = async () => {
  try {
    let conn = await mongooge.connect(process.env.MONGO_URI);
    console.log("Database Connected.");
  } catch (err) {
    console.log("some error occured ----------------- " + err.message);
  }
};

module.exports = dbconnect;
