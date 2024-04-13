const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const ONE_GWEI = 1_000_000_000n;
module.exports = buildModule("CarbonCreditsModule", (m) => {
  // const initialSupply = m.getParameter("initialSupply", 10000);
  // const initialPrice = m.getParameter("initialPrice", ONE_GWEI);
  const carbonCredits = m.contract("CarbonCredits");

  return { carbonCredits };
});
