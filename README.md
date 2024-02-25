## DegenGame - DegenFashTokens
# Overview
DegenGame, a smart contract tailored for the Avalanche blockchain, streamlines the establishment and administration of a distinctive token system within the gaming realm. These tokens are earned by players through in-game accomplishments, granting them access to exclusive rewards and facilitating trade. Leveraging the Avalanche blockchain ensures swift and cost-effective transactions, enhancing the overall gaming experience. Aligned with Degen Gaming's vision, this smart contract aims to elevate player loyalty and transform in-game economies.

# Project Features
Token Minting: The platform enables the creation of new tokens, distributed to players as rewards, with exclusive minting privileges reserved for the owner.

Token Transfers: Players have the ability to transfer their earned tokens to others seamlessly.

Token Redemption: Players can redeem their accumulated tokens for items available in the in-game store.

Token Balance Inquiry: At any given time, players can check their token balance effortlessly.

Token Burning: Any user has the capability to burn their owned tokens that are no longer required.

# Getting Started
Follow these steps to initialize the project on your local machine.

# Prerequisites

Ensure Node.js and npm are installed on your machine.
Clone the repository using the command: git clone https://github.com/Zeegaths/Degen-Token 
Change directory to your project file: cd projectname
Install all dependencies: npm install
Compile the contract using Hardhat: npx hardhat compile
Run the deployment script: npx hardhat run scripts/deploy.js --network fuji
Verify the contract on snowtrace: npx hardhat verify --network fuji contract address
Interact with the deployed contract through transactions such as transfers, minting, and burning.

# Author
Zeegaths