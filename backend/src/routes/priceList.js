const express = require("express");
const {
  addPriceItem,
  deletePriceItem,
  getPriceItems,
  updatePriceItem,
  addBulkPriceItems,
} = require("../controller/priceList");
const router = express.Router();

router.get("/", getPriceItems);
router.put("/", addPriceItem);
router.patch("/", updatePriceItem);
router.delete("/:id", deletePriceItem);

router.put("/bulk", addBulkPriceItems);

module.exports = router;
