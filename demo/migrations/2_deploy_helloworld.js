var Migrations = artifacts.require("./HelloWorld.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
