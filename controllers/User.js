const Validator = require('fastest-validator');
const jwt = require('jsonwebtoken');
const v = new Validator();
const { Users } = require('../models');
const bcrypt = require('bcrypt');


exports.getUsers = async (req, res) => {
    try {
        const users = await Users.findAll();
        res.json(users);
    } catch (error) {
        console.log(error);
    }
}
exports.registerUsers = async (req, res) => {
    const schema = {
        name: 'string',
        password: 'string',
        email: 'string|unique'
    }
    const validate = v.validate(req.body, schema);
    if(validate.length){
        return res.status(400).json(validate);
    }
    let getUser = await Users.findOne({
        where: {
            email: req.body.email
        }
    });
    if(getUser != null){
        res.json({message: 'Email sudah terdaftar!'});
    }else{
        const salt = await bcrypt.genSalt();
        const hashPassword = await bcrypt.hash(req.body.password, salt);
        try {
            await Users.create({
                name: req.body.name,
                email: req.body.email,
                password: hashPassword,
                role: req.body.role
            });
            res.json({message: 'Berhasil daftar, silahkan login'});
        } catch (error) {
            console.log(error);
        }           
    }
}

exports.login = async(req, res) => {
    try {
        const user = await Users.findAll({
            where:{
                email: req.body.email
            } 
        });
        var hash = user[0].password
        let match = await bcrypt.compare(req.body.password, hash);
        if(!match) return res.status(400).json({message: 'Password Salah'});
        const userId = user[0].id;
        const name = user[0].name;
        const email = user[0].email;
        const role = user[0].role;
        const login = 1;
        const accessToken = jwt.sign({userId, name, email, role, login}, process.env.ACCESS_TOKEN_SECRET,{
        expiresIn: '20s'
        });
        const refreshToken = jwt.sign({userId, name, email, role, login}, process.env.REFRESH_TOKEN_SECRET,{
            expiresIn: '1d'
        }); 
        await Users.update({refreshToken: refreshToken},{
            where:{
                id: userId
            }
        });
        res.cookie('refreshToken', refreshToken, {
            httpOnly: true,
            maxAge: 1000 * 60 * 60 * 24 * 365 * 20
        });
        res.json({ accessToken });
    } catch (error) {
        res.status(400).json({message: 'Email tidak ditemukan'});
    }
}