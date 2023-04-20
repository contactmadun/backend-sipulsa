const { Users } = require('../models');
const jwt = require('jsonwebtoken');

exports.refreshToken = async(req, res) =>{
    try {
        const refreshToken = req.cookies.refreshToken;
        if(!refreshToken) return res.sendStatus(401);
        const user = await Users.findAll({
            where:{
                refreshToken: refreshToken
            }
        });
        if(!user[0]) return res.sendStatus(403);
        jwt.verify(refreshToken, process.env.REFRESH_TOKEN_SECRET, (err, decode) => {
            if(err) return res.sendStatus(403);
            const userId = user[0].id;
            const name = user[0].name;
            const email = user[0].email;
            const role = user[0].role;
            const balance = user[0].balance;
            const accessToken = jwt.sign({userId, name, email, role, balance}, process.env.ACCESS_TOKEN_SECRET, {
                expiresIn: '30d'
            });
            res.json({ accessToken });
        });  
    } catch (error) {
        console.log(error);
    }
}