const db = require('../../mysql')
const fromData = require('../../utils/utils')

const findLife = () => {
  return new Promise((resolve,reject) => {
    db.query('select * from life', [], (error, res) => {
      if (error) {
        reject()
      } else {
        resolve(fromData(res))
      }
    })
  })
}

module.exports = {
  findLife
}