const greeting = require('./greeting')
const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.json(greeting)
})

app.listen(port, () => {
  console.log(`Greeting Service listening at http://localhost:${port}`)
})
