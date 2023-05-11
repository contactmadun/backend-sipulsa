const { connDigiflazz, getDataPrepaid } = require('../controllers/Digiflazz');

var express = require('express');
var router = express.Router();

router.get('/', connDigiflazz);
router.get('/prepaid', getDataPrepaid);
// router.delete('/:id', deleteCategory);

module.exports = router;