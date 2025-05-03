const express = require("express");
const {
  addTranslation,
  getTranslation,
  addBulkTranslation,
  deleteBulkTranslations,
} = require("../controller/translation");
const router = express.Router();

router.get("/", getTranslation);
router.put("/", addTranslation);
router.put("/bulk", addBulkTranslation);
router.delete("/bulk", deleteBulkTranslations);

module.exports = router;
