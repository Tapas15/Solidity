const NFT_Data = artifacts.require("NFT_Data")
const MarketPlace = artifacts.require("MarketPlace");
const TokenFactory = artifacts.require("TokenFactory");


module.exports = async function (deployer) {

  await deployer.deploy(NFT_Data);

  const NFTData = NFT_Data.address;

  await deployer.deploy(MarketPlace,NFTData);

  const marketplace = MarketPlace.address

  await deployer.deploy(TokenFactory,NFTData,marketplace);

  };
