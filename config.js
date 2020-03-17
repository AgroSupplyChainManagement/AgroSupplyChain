const sequelize = require("sequelize")

  
var database = new sequelize ("demo", "root", "",{
    host: "localhost",
    dialect: "mysql",
    operatorsAliases: false,

    pool:{
        maz:6,
        min:0,
        acquire: 3000,
        idle: 1000
    },

})


module.exports = database