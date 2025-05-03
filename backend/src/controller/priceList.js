const PriceList = require("../models/priceList");

exports.getPriceItems = async (req, res) => {
  try {
    const items = await PriceList.findAll();

    res.status(200).json({ success: true, items });
  } catch (error) {
    res.status(500).json({ success: false, message: error.errorResponse });
  }
};

exports.updatePriceItem = async (req, res) => {
  try {
    const item = await PriceList.findByPk(req.body.id);

    item.set({ ...req.body });
    await item.save();

    res
      .status(201)
      .json({ success: true, message: "price list updated", item });
  } catch (error) {
    console.log(error);
    res.status(500).json({
      success: false,
      message: error.errorResponse || "error updating price list",
    });
  }
};

exports.addPriceItem = async (req, res) => {
  try {
    const item = await PriceList.create(req.body);

    res.status(201).json({ success: true, message: "price list added", item });
  } catch (error) {
    console.log(error);
    res.status(500).json({
      success: false,
      message: error.errorResponse || "error adding price list",
    });
  }
};

exports.deletePriceItem = async (req, res) => {
  try {
    const { id } = req.params;
    await PriceList.destroy({ where: { id } });

    res.json({ success: true, message: "price list deleted" });
  } catch (error) {
    res.status(500).json({
      success: false,
      message: error.errorResponse || "error removing price list",
    });
  }
};
