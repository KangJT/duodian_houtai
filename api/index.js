var express = require('express');
var router = express.Router();
// 登录
const userController = require('./controller/user')
// 轮播图
const bannerController = require('./controller/banner')
// 导航
const menuController = require('./controller/menu')

// 内容
const lifeController = require('./controller/life')
// 检查登录
const checkLogin = require('./middware')
/**
 * 登录接口
 * params {} phone  
 * params {} msgCode
*/

router.post('/user/login',userController.login);
router.get('/user/info', checkLogin, userController.info);
router.get('/user/msg_code', userController.msg_code);

router.get('/home/banner', bannerController.banner)
router.get('/home/menu', menuController.menu)
router.get('/home/life', lifeController.life)

module.exports = router;