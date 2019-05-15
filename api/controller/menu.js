const menuModel = require('../model/menu')

const menu = async (req, res, next) => {
  try {
    const data = await menuModel.findMenu()
    res.json({
      code: 0,
      msg: '成功',
      data
    })
  } catch (error) {
    res.json({
      code: 1,
      msg: '失败'
    })
  }
}

module.exports = {
  menu
}