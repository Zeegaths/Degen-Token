
const hre = require("hardhat");

async function main() {


  const DegenStore = await hre.ethers.deployContract("DegenStore");

  await DegenStore.waitForDeployment();

  console.log(
    `Degentokens  deployed to ${DegenStore.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});