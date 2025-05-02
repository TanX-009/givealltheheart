const express = require("express");
const priceRoutes = require("./routes/priceList");
const translationRoutes = require("./routes/translation");
const { sinc } = require("./config/database");

const app = express();
require("dotenv").config();
app.use(express.json());
app.use("/prices", priceRoutes);
app.use("/translate", translationRoutes);

sinc();
app.listen(5000, () => console.log("Server running on port 3000"));
