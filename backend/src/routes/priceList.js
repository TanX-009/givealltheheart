const express = require("express");
const {
  addPriceItem,
  deletePriceItem,
  getPriceItems,
} = require("../controller/priceList");
const router = express.Router();

router.get("/", getPriceItems);
router.post("/", addPriceItem);
router.delete("/:id", deletePriceItem);

module.exports = router;
