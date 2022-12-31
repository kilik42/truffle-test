require('babel-register');
require('babel-polyfill');

module.exports = {
    networks: {
        development: {
            host: '127.0.0.1:7545',
            port: 7545,
            network_id: "*" // Match any network id
        }
    },  
    compilers: {
        solc: {
            version: "0.5.0"
        }
    }       
}
