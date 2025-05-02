const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/database");

const Translation = sequelize.define("Translation", {
  key: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  language: {
    type: DataTypes.STRING,
    allowNull: false, // e.g., 'en', 'sv'
  },
  value: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  page: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
});

module.exports = Translation;
