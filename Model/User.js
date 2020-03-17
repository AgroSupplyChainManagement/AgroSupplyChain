const  sequelize = require ('sequelize')
const db = require("../config")

 
const User = db.define("user",{
    firstname: sequelize.STRING,
    lastname:sequelize.STRING,
    email:sequelize.STRING,
    longitude:sequelize.FLOAT,                       
    latitude:sequelize.FLOAT,
    usernmae:sequelize.STRING,
    password:sequelize.STRING,
})

db.sync({
    logging: console.log
})
    