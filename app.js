const express = require('express')
const dotenv = require('dotenv')

dotenv.config()

const app = express()

app.use(express.json())

app.use('/', require('./routers/camdigikey-router'))

app.listen(9000, () => {
  console.log('Server is running on 9000...')
})
