'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    /**
     * Add altering commands here.
     *
     * Example:
     * await queryInterface.createTable('users', { id: Sequelize.INTEGER });
     */
     await queryInterface.createTable('mutation', { 
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        allowNull: false,
         autoIncrement: true
      }, 
      user:{
        type: Sequelize.STRING,
        allowNull: false
      },
      type: {
        type: Sequelize.ENUM("-", "+"),
        allowNull: false
      },
      amount: {
        type: Sequelize.INTEGER
      },
      note:{
        type: Sequelize.STRING
      },
      category: {
        type: Sequelize.ENUM("transaksi", "deposit", "cashback", "lainnya")
      },
      createdAt: {
        type: Sequelize.DATE,
        allowNull: false
      },
      updatedAt: {
        type: Sequelize.DATE,
        allowNull: false
      }
    });
  },

  async down (queryInterface, Sequelize) {
    /**
     * Add reverting commands here.
     *
     * Example:
     * await queryInterface.dropTable('users');
     */
     await queryInterface.dropTable('mutation');
  }
};
