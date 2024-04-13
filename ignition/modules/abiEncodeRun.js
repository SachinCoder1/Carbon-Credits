const { ethers } = require("ethers");

function main() {
    // Initialize the default ABI coder
    const abiCoder = ethers.utils.defaultAbiCoder;

    // Define the constructor parameters
    const initialSupply = 10000;    // Example value for initialSupply
    const initialPrice = 1_000_000_000;  // Example value for initialPrice, equivalent to 1 GWEI

    // Encode the parameters
    const encodedParams = abiCoder.encode(
        ["uint256", "uint256"],  // Parameter types
        [initialSupply, initialPrice]  // Parameter values
    );

    console.log("Encoded Parameters:", encodedParams);
}

main();