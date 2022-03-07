const Migrations = artifacts.require("Migrations");
const Gas = artifacts.require("Gas");
const MetaCoin = artifacts.require("MetaCoin");
const ConvertLib = artifacts.require("ConvertLib");
const Coin = artifacts.require("Coin");




module.exports = function (deployer) {
  // deployer.deploy(Migrations);
  // deployer.deploy(ConvertLib);
  // deployer.link(ConvertLib, MetaCoin);
  // deployer.deploy(MetaCoin);
 
  deployer.deploy(Coin);
 
};
