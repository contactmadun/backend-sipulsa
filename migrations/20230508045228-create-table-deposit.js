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
     await queryInterface.createTable('deposit', { 
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        allowNull: false,
        autoIncrement: true
      },
      refId: {
        type: Sequelize.STRING,
        allowNull: false
      },
      user: {
        type: Sequelize.STRING,
        allowNull: false
      },
      storeName: {
        type: Sequelize.STRING
      },
      method:{
        type: Sequelize.STRING
      },
      amount:{
        type: Sequelize.INTEGER,
        allowNull: false
      },
      status:{
        type: Sequelize.ENUM("proses", "sukses", "gagal"),
        defaultValue: "proses"
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
     await queryInterface.dropTable('deposit');
  }
};
