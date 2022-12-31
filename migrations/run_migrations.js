const Migrations = artifacts.require("Migrations");

module.exports = function(deployer) {
    deployer.deploy(Migrations);
    }

// Path: migrations\2_deploy_contracts.js
// Compare this snippet from truffle-config.js:
