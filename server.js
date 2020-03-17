const express = require('express')
const path = require('path')
const bodyParser = require('body-parser')
const { config, engine } = require('express-edge')

const database = require("./config")
const app = express()
const farmer = require("./Controller/routes/farmer")

database.authenticate()
    .then(()=>{
        console.log ("Database Connected")
    })
    .catch(err=>{
        console.log("Error Connecting to Database" + err)
    })


app.get('/', (req, res)=>{
     res.send("INDEX")
})

app.use("/farmer", farmer)






const PORT = process.env.PORT || 4000
app.listen(PORT, () =>{
    console.log(`Listening on port: ${PORT}`)
})