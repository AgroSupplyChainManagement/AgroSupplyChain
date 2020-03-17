const  sequelize = require ('sequelize')
const db = require("../config")

 
const Farmer = db.define("",{
    usernam: sequelize.STRING,
    password:sequelize.STRING,
})

db.sync({
    logging: console.log
})
    