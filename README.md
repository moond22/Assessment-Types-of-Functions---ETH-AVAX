# MyToken Smart Contract

This repository contains the Solidity code for the `MyToken` smart contract. The contract implements a basic ERC-20 token with functionalities for minting, burning, and transferring tokens.

## Contract Overview

The `MyToken` contract includes the following functionalities:

1. **Token Metadata**:
   - `name`: The name of the token (`MyToken`).
   - `symbol`: The symbol of the token (`MTK`).
   - `decimals`: The number of decimal places the token can be divided into (18 decimals by default).
   - `totalSupply`: The total supply of tokens in circulation.

2. **Owner Management**:
   - `owner`: The address that deployed the contract and has special privileges (such as minting tokens).

3. **Balance Tracking**:
   - `balances`: A mapping that tracks the token balances of Ethereum addresses.

4. **Events**:
   - `Transfer`: Emitted when tokens are transferred from one address to another.
   - `Mint`: Emitted when new tokens are minted and added to an address's balance.
   - `Burn`: Emitted when tokens are burned (destroyed).

