const { Sequelize, DataTypes } = require("sequelize");

module.exports = (Sequelize, DataTypes) => {
    const CategoryServer = Sequelize.define('CategoryServer', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
          },
          code: {
            type: DataTypes.STRING
          },
          name: {
            type: DataTypes.STRING
          },
          type: {
            type: DataTypes.STRING
          },
          real: {
            type: DataTypes.STRING
          },
          order: {
            type: DataTypes.ENUM('prepaid', 'postpadi')
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
            tableName: 'category'   
        });

        return CategoryServer;
}