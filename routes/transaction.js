const { getDataTransaction } = require('../controllers/Transaction');
var express = require('express');
var router = express.Router();

router.post('/', getDataTransaction);
// router.put('/:id', changePassword);
module.exports = router;