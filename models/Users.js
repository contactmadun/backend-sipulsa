const { Sequelize, DataTypes } = require("sequelize");

module.exports = (Sequelize, DataTypes) => {
    const Users = Sequelize.define('Users', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
          },
          name: {
            type: DataTypes.STRING,
            allowNull: false
          },
          email: {
            type: DataTypes.STRING,
            allowNull: false,
          },
          password: {
            type: DataTypes.STRING,
            allowNull: false
          },
          role: {
            type: DataTypes.STRING,
            allowNull: false,
          },
          phoneNumber: {
            type: DataTypes.INTEGER,
          },
          address: {
            type: DataTypes.STRING
          },
          logged: {
            type: DataTypes.INTEGER,
          },
          pin: {
            type: DataTypes.INTEGER
          },
          balance: {
            type: DataTypes.INTEGER
          },
          commision: {
            type: DataTypes.INTEGER
          },
          point: {
            type: DataTypes.INTEGER
          },
          status: {
            type: DataTypes.INTEGER
          },
          uplink: {
            type: DataTypes.STRING
          },
          imageProfil: {
            type: DataTypes.STRING
          },
          referal: {
            type: DataTypes.STRING
          },
          refreshToken: {
            type: DataTypes.STRING
          },
          createdAt: {
            type: DataTypes.DATE,
            allowNull: false
          },
          updatedAt: {
            type: DataTypes.DATE,
            allowNull: false
          }
        },{
            tableName: 'users'   
        });

        return Users;
}