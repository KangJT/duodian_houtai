const db = require('../../mysql')
const fromData = require('../../utils/utils')

const findUser = (phone) => {
  return new Promise((resolve, reject) => {
    db.query('select * from user where phone=?', [phone], (error, res) => {
      if (error) {
        reject()
      } else {
        resolve(fromData(res)[0])
      }
    })
  })
}

module.exports = {
  findUser
}