const { userDeposit, getDataDepositByEmail, getDataDepositAll, updateStatus, getDataPagination  } = require('../controllers/Deposit');
var express = require('express');
var router = express.Router();

router.post('/', userDeposit);
// router.get('/', getDataPagination)
router.get('/', getDataDepositAll);
router.post('/history', getDataDepositByEmail);
router.post('/update', updateStatus);

module.exports = router;