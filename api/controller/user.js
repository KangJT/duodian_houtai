const user = require('../model/user')
const jwt = require('jsonwebtoken')


const info = (req, res, next) => {
  // const {token} = req.headers
  // const info = jwt.decode(token, 'wyh123')
  res.send(req.userInfo)
}
const login = async (req, res, next) => {
  const {
    phone,
    code
  } = req.body
  console.log(code)
  const msgCode = req.session.code
  console.log(msgCode,'jjjj')
  if (!msgCode) {
    res.status(402).send({
      msg: '验证码失效!'
    })
  } else if (msgCode && msgCode != code) {
    res.status(402).send({
      msg: '验证码错误!'
    })
  } else {
    try {
      const userInfo = await user.findUser(phone)
      const token = jwt.sign(userInfo, 'lyr123')
      res.cookie('token', token, {maxAge: 1000*60})  
      res.send({
        code: 0,
        msg: '登录成功'
      })
    } catch {
      res.send({
        code: 1,
        msg: '登录失败'
      })
    }
  }
}

const msg_code = (req, res, next) => {
  let code = ''

  const {phone} = req.query

  while (code.length < 6) {
    code += Math.floor(Math.random() * 10)
  }

  req.session.code = code
  
  res.send({
    code: 0,
    msg: '验证码发送成功',
    msg_code: '手机号：' + phone + '验证码是：[' + code + ']'
  })
}

module.exports = {
  login,
  info,
  msg_code
}