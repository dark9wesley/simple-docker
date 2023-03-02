const Koa = require('koa')

const app = new Koa()

// response
app.use((ctx) => {
  ctx.body = 'hello docker'
})

app.listen(3000)
