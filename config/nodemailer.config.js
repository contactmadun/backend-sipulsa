const nodemailer = require("nodemailer");

const user = process.env.USER;
const password  = process.env.PASSWORD;

const transport = nodemailer.createTransport({
    host: "mail.sipulsa.site",
    port: 465,
    secure: true,
    auth:{
        user: user,
        pass: password
    },
});

module.exports.sendConfirmationEmail = (name, email, confirmationCode) => {
    console.log('check');
    transport.sendMail({
        from: user,
        to: email,
        subject: "Konfirmasi Email Sipulsa",
        html: `<h1>Email Confirmation</h1>
            <h2>Hai ${name}</h2>
            <p>Terima kasih telah mendaftar di sipulsa. Untuk mengaktifkan akun silahkan klik link dibawah ini</p>
            <a href=https://sipulsa.site/confirm/${confirmationCode}> Klik Disini</a>`
            // for development 
            // <a href=http://localhost:8080/confirm/${confirmationCode}> Klik Disini</a>
            // for production
            //<a href=https://sipulsa.site/confirm/${confirmationCode}> Klik Disini</a>
    }).catch(err => console.log(err));
}

module.exports.sendEmailChangePassword = (email, confirmationCode) => {
    transport.sendMail({
        from: user,
        to: email,
        subject:"Ubah Kata Sandi",
        html: `<h1>Email Confirmation</h1>
        <h2>Halo Mitra</h2>
        <p>Untuk merubah kata sandi klik link dibawah ini. Jika kamu tidak merasa merubah kata sandi segera hubungi admin.</p>
        <a href=https://sipulsa.site/change-password/${confirmationCode}> Klik Disini</a>`
        //for development
        //<a href=http://localhost:8080/change-password/${confirmationCode}> Klik Disini</a>
        //for production
        //<a href=https://sipulsa.site/change-password/${confirmationCode}> Klik Disini</a>
    }).catch(err => console.log(err));
}