import { ethers } from "hardhat";

async function main() {

  const degenGame = await ethers.deployContract("DegenGame");

  await degenGame.waitForDeployment();

  console.log(
    `DegenGame was deployed to ${degenGame.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
}
