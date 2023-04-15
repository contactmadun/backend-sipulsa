const { getUsers, registerUsers, login } = require('../controllers/User');
var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', getUsers); 
router.post('/', registerUsers);
router.post('/login', login);  

module.exports = router;
