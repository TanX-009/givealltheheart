const { Sequelize } = require("sequelize");
require("dotenv").config();

const sequelize = new Sequelize({
  dialect: "postgres",
  database: process.env.POSTGRES_DB,
  username: process.env.POSTGRES_USER,
  password: process.env.POSTGRES_PASSWORD,
  host: process.env.POSTGRES_HOST,
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
