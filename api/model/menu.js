const db = require('../../mysql')
const fromData = require('../../utils/utils')

const findMenu = () => {
  return new Promise((resolve,reject) => {
    db.query('select * from local_menu', [], (error, res) => {
      if (error) {
        reject()
      } else {
        resolve(fromData(res))
      }
    })
  })
}

module.exports = {
  findMenu
}