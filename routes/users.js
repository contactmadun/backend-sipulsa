const { getUsers, registerUsers, login, logout } = require('../controllers/User');
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
router.delete('/logout', logout);  

module.exports = router;
