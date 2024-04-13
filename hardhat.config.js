require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();
const {vars} = require("hardhat/config");

const ETHERSCAN_API_KEY = vars.get("ETHERSCAN_API_KEY");
const ARBITRUM_ETHERSCAN_API_KEY = vars.get("ARBITRUM_ETHERSCAN_API_KEY");


const ARBITRUM_PRIVATE_KEY = process.env.ARBITRUM_SEPOLIA_TESTNET_PRIVATE_KEY;
/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.20",
  etherscan: {
    apiKey: {
      arbitrumSepolia: ARBITRUM_ETHERSCAN_API_KEY,
    }
  },

  networks: {
    hardhat: {
    },
    arbitrumSepolia: {
      url: "https://sepolia-rollup.arbitrum.io/rpc",
      accounts: [ARBITRUM_PRIVATE_KEY],
      chainId: 421614,
    }
  },
  defaultNetwork: "arbitrumSepolia",

};
