const express = require('express')
const app = express()
const port  = process.env.PORT
const lambda = require("./lambda/index.js")
console.log('starting!');
app.use(lambda[process.env.LAMBDA_NAME]);



app.listen(port)
