const { Sequelize, DataTypes } = require("sequelize");

module.exports = (Sequelize, DataTypes) => {
    const Mutation = Sequelize.define('Mutation', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
          },
          user: {
            type: DataTypes.STRING,
            allowNull: false
          },
          type: {
            type: DataTypes.ENUM("-", "+"),
            allowNull: false
          },
          amount: {
            type: DataTypes.INTEGER
          },
          note:{
            type: DataTypes.STRING
          },
          category: {
            type: DataTypes.ENUM("transaksi", "deposit", "cashback", "lainnya")
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
            tableName: 'mutation'   
        });

        return Mutation;
}