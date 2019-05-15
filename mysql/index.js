 const mysql = require('mysql')

const connection = mysql.createConnection({
  host:"localhost",
  user:"root",
  password:"123456",
  database:"duodian"
})

connection.connect((error, res) => {
  if (error) {
    console.log('连接失败')
  } else {
    console.log('连接成功')
  }
})

module.exports = connection
