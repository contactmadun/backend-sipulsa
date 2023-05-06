const { verifyUser, changePassword } = require('../controllers/Verify');
var express = require('express');
var router = express.Router();

router.post('/:id', verifyUser);
router.put('/:id', changePassword);
module.exports = router;