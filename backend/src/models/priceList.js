const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/database");

const PriceList = sequelize.define("PriceList", {
  articleNo: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
  },
  product: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  inPrice: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: false,
  },
  price: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: false,
  },
  unit: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  inStock: {
    type: DataTypes.INTEGER,
    allowNull: false,
    defaultValue: 0,
  },
  description: {
    type: DataTypes.TEXT,
    allowNull: true,
  },
});

module.exports = PriceList;
