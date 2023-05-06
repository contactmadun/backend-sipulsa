const { Users } = require('../models');
const bcrypt = require('bcrypt');

exports.verifyUser = (req, res) => {
    try {
        let data = Users.findAll({
            where:{
                confirmationCode: req.params.id
            }
        });
        if(data !=null){
            Users.update({
                status: 'active'},
                {where:{
                    confirmationCode: req.params.id
                }});
            res.json({message: 'Akun telah diverifikasi'})};
    } catch (error) {
        console.log(error);
    }
}

exports.changePassword = async (req, res) => {
    let data = await Users.findOne({
        where:{
            confirmationCode: req.params.id
        }
    });
    if(data === null){
        res.json({message: 'Password gagal di ubah'});
    }else{
        const salt = await bcrypt.genSalt();
        const hashPassword = await bcrypt.hash(req.body.password, salt);
        try {
            await Users.update({
                password: hashPassword},
                {where:{
                    confirmationCode: req.params.id}});
                res.json({message: 'Password berhasil di ubah, Silahkan login'});
        } catch (error) {
            console.log(error);
        }
    }
}