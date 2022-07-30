const {Sequelize, DataTypes} = require('sequelize');

const sequelize = new Sequelize('currency', 'root', '', {
    host: '127.0.0.1',
    dialect: 'mysql',
    operatorsAliases: false,
    pool: {max: 5, min: 0, idele: 10000}
});

sequelize.authenticate()
.then(() => {
    console.log("Mysql Connected");
}).catch (error => {
    console.log(`Error ${error}`);
});

const db = {};
db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.products = require('./products')(sequelize, Sequelize);

module.exports = db;