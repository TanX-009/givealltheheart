const Translation = require("../models/tranlations");

exports.getTranslation = async (req, res) => {
  try {
    console.log(req.query);
    const { page, language } = req.query;
    const items = await Translation.findAll({ where: { page, language } });

    res.status(200).json({ success: true, items });
  } catch (error) {
    res.status(500).json({ success: false, message: error.errorResponse });
  }
};

exports.addTranslation = async (req, res) => {
  try {
    console.log(req.body);
    const item = await Translation.create(req.body);

    res.status(201).json({ success: true, message: "Translation added", item });
  } catch (error) {
    console.log(error);
    res.status(500).json({
      success: false,
      message: error.errorResponse || "error adding price tranlsation",
    });
  }
};

exports.addBulkTranslation = async (req, res) => {
  try {
    console.log(req.body); // should be an array of translation objects

    if (!Array.isArray(req.body)) {
      return res.status(400).json({
        success: false,
        message: "Request body must be an array of translations.",
      });
    }

    const items = await Translation.bulkCreate(req.body);

    res.status(201).json({
      success: true,
      message: "Translations added",
      items,
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({
      success: false,
      message: error.message || "Error adding translations",
    });
  }
};

exports.deleteBulkTranslations = async (req, res) => {
  try {
    const { page, language } = req.body;

    if (!page || !language) {
      return res.status(400).json({
        success: false,
        message: "Both 'page' and 'language' are required.",
      });
    }

    const deletedCount = await Translation.destroy({
      where: {
        page,
        language,
      },
    });

    res.status(200).json({
      success: true,
      message: `${deletedCount} translation(s) deleted for page '${page}' and language '${language}'.`,
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({
      success: false,
      message: error.message || "Error deleting translations",
    });
  }
};
