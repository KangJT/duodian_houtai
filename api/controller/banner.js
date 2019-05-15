const bannerModel = require('../model/banner')

const banner = async (req, res, next) => {
  try {
    const data = await bannerModel.findBanner()
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
  banner
}