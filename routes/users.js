const { getUsers, registerUsers, login, forgotPassword, logout } = require('../controllers/User');
// const { verifyToken } = require('../middleware/verifyToken');
const { refreshToken } = require('../controllers/RefreshToken');
var express = require('express');
var router = express.Router();

/* GET users listing. */
// router.get('/', verifyToken, getUsers);
router.get('/', getUsers); 
router.post('/', registerUsers);
router.post('/login', login);
router.get('/token', refreshToken);
router.post('/forgot', forgotPassword);
router.delete('/logout', logout);  

module.exports = router;
