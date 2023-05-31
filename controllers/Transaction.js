const { Trx } = require('../models');
// const bcrypt = require('bcrypt');

exports.getDataTransaction = async (req, res) => {
    try {
        const data = await Trx.findAll({
            where:{
                user: req.body.email
            },
            order: [['createdAt', 'DESC']]
        });
        res.json(data);
    } catch (error) {
        console.log(error);
    }
}