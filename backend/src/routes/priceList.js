const express = require("express");
const {
  addPriceItem,
  deletePriceItem,
  getPriceItems,
  updatePriceItem,
} = require("../controller/priceList");
const router = express.Router();

router.get("/", getPriceItems);
router.post("/", addPriceItem);
router.patch("/", updatePriceItem);
router.delete("/:id", deletePriceItem);

module.exports = router;
