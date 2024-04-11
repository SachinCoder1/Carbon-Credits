require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */
const ARBITRUM_PRIVATE_KEY = process.env.ARBITRUM_SEPOLIA_TESTNET_PRIVATE_KEY;
module.exports = {
  solidity: "0.8.24",
  networks: {
    hardhat: {
    },
    arbitrumSepolia: {
      url: "https://sepolia-rollup.arbitrum.io/rpc",
      accounts: [ARBITRUM_PRIVATE_KEY]
    }
  },

};
