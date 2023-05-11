const { userDeposit, getDataDepositByEmail, getDataDepositAll, updateStatus  } = require('../controllers/Deposit');
var express = require('express');
var router = express.Router();

router.post('/', userDeposit);
router.get('/', getDataDepositAll);
router.post('/history', getDataDepositByEmail);
router.post('/update', updateStatus);

module.exports = router;