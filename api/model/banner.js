const db = require('../../mysql')
const fromData = require('../../utils/utils')

const findBanner = () => {
  return new Promise((resolve,reject) => {
    db.query('select * from local_banner', [], (error, res) => {
      if (error) {
        reject()
      } else {
        resolve(fromData(res))
      }
    })
  })
}

module.exports = {
  findBanner
}