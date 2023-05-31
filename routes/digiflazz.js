const { connDigiflazz, getDataPrepaid, checkTopUp } = require('../controllers/Digiflazz');

var express = require('express');
var router = express.Router();

router.get('/', connDigiflazz);
router.get('/prepaid', getDataPrepaid);
router.post('/check', checkTopUp);

module.exports = router;