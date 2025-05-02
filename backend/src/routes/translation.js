const express = require("express");
const {
  addTranslation,
  getTranslation,
  addBulkTranslation,
} = require("../controller/translation");
const router = express.Router();

router.get("/", getTranslation);
router.post("/", addTranslation);
router.post("/bulk", addBulkTranslation);

module.exports = router;
