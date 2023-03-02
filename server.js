const http = require('node:http')
const fs = require('node:fs')

const server = http.createServer((req, res) => {
  fs.createReadStream('./index.html').pipe(res)
})

server.listen(8080, () => {
  console.log('listening port 8080')
})
