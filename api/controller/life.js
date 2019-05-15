const lifeModel = require('../model/life')

const life = async (req, res, next) => {
  try {
    const data = await lifeModel.findLife()
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
  life
}