const express = require("express");
const cors = require("cors");
const priceRoutes = require("./routes/priceList");
const translationRoutes = require("./routes/translation");
const { sinc } = require("./config/database");

const app = express();
require("dotenv").config();
app.use(express.json());
app.use(
  cors({
    origin: "http://localhost:5173",
    credentials: true,
  }),
);

app.use("/product", priceRoutes);
app.use("/translate", translationRoutes);

sinc();
app.listen(5000, () => console.log("Server running on port 3000"));
