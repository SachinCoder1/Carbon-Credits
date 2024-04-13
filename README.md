# Carbon Credits Trading Platform


This repository contains the Solidity smart contract for a decentralized Carbon Credits Trading Platform deployed on Arbitrum Sepolia. The contract leverages the Ethereum blockchain's security and transparency to provide a robust platform for trading carbon credits, with the aim of promoting environmental sustainability.

## Contract Deployment

The Carbon Credits contract is deployed and **verified ✅** at Arbitrum Sepolia ⚡⚡:

- **Contract Address**: [0x93d75f66b0951ba167352340901e45c53d2840a2](https://sepolia.arbiscan.io/address/0x93d75f66b0951ba167352340901e45c53d2840a2)



Tokenized Carbon Credits Trading Platform: This idea has strong potential due to its relevance in today's eco-conscious market. It addresses a real and urgent global need—carbon footprint reduction—while leveraging the blockchain for transparency and security in transactions. Given the increasing focus on environmental sustainability and the growing market for carbon credits, a decentralized platform on Arbitrum could attract significant attention from both investors and environmentalists. Its success hinges on offering an accessible, efficient, and transparent platform for trading carbon credits, which could set a new standard in the environmental sector.

## Try running tasks:

```shell
npm i
npx hardhat test
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/CarbonCredit.js
```


## Features

- [x] **ERC-20 Compliant Tokens**: Utilizes ERC-20 standard for carbon credits, allowing for widespread wallet support and interoperability.
- [x] **Minting and Burning of Tokens**: Users can mint new credits by purchasing them and burn credits to offset carbon emissions.
- [x] **Decentralized Trading**: Includes functionalities for placing and fulfilling buy and sell orders, facilitating peer-to-peer trading without intermediaries.
- [x] **Reentrancy Guard**: Implements reentrancy protection to prevent common vulnerabilities in smart contracts dealing with financial transactions.
- [x] **Ownership Management**: Uses OpenZeppelin's Ownable contract to manage administrative functions securely.
- [x] **Dynamic Pricing**: Allows the contract owner to adjust the price of carbon credits based on external data or internal algorithms.

## Potential and Impact

This platform aims to set a new standard in the environmental sector by providing an accessible, efficient, and transparent method for trading carbon credits. It addresses the urgent global need for carbon footprint reduction and supports the growing focus on environmental sustainability. With its deployment on the Arbitrum network, the platform benefits from reduced gas fees and enhanced transaction throughput, making it more accessible to a global audience.

## Getting Started

To interact with the contract, you can use tools like MetaMask to connect to the Arbitrum Sepolia network. Here’s a brief guide:

1. **Install MetaMask**: Download and install the MetaMask extension for Chrome or Firefox.
2. **Connect to Arbitrum Sepolia**: Set up MetaMask to connect to the Arbitrum Sepolia network.
3. **Interact with the Contract**: Use the contract address to interact with the contract through MetaMask or any compatible wallet.

## Acknowledgments

- OpenZeppelin for secure contract standards.
- Arbitrum for their scalable blockchain platform.
- Sachin Gurjar and Eth Global Team

## Development and Contributions

This project is open for contributions from the community. You can contribute by:

- **Reporting Issues**: Submit issues for any bugs encountered or improvements you believe are necessary.
- **Submitting Pull Requests**: If you have improvements or fixes, please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
