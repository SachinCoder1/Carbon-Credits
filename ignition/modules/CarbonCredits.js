const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");


module.exports = buildModule("CarbonCreditsModule", (m) => {
  const carbonCredits = m.contract("CarbonCredits");

  return { carbonCredits };
});
