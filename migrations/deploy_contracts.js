const Tether = artifacts.require("Tether");

module.exports = async function(deployer) {
    await deployer.deploy(Tether);
    }
//
// // Path: migrations\3_deploy_contracts.js
// // Compare this snippet from truffle-config.js: