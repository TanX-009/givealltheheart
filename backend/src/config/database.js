const { Sequelize } = require("sequelize");
require("dotenv").config();

const sequelize = new Sequelize({
  dialect: "postgres",
  database: process.env.DB_NAME,
  username: process.env.DB_USER,
  password: process.env.DB_PASS,
  host: process.env.DB_HOST,
  port: 5432,
  ssl: true,
});

async function sinc() {
  return new Promise((resolve) => {
    sequelize.sync().then(() => {
      resolve();
    });
  });
}

module.exports = { sequelize, sinc };
