MyToken Solidity Smart Contract
Overview
The MyToken contract is a basic implementation of an ERC20-compatible token on the Ethereum blockchain. It allows for token creation (minting), transfer of tokens between addresses, and burning of tokens.

Features
Token Metadata

Name: MyToken
Symbol: MTK
Decimals: 18
Total Supply: Initialized upon contract deployment
Owner Functions

mint: Allows the contract owner to create (mint) new tokens and assign them to a specified address.
burn: Allows any token holder to destroy (burn) their own tokens.
User Functions

transfer: Enables any token holder to transfer tokens to another address.
Usage
Deployment
The contract is deployed with an initial supply of tokens assigned to the deploying address (owner).

Interacting with the Contract
Minting Tokens
Only the contract owner can mint new tokens using the mint function.

Burning Tokens
Any token holder can burn their tokens using the burn function.

Transferring Tokens
Token holders can transfer tokens to another address using the transfer function.

Events
The contract emits the following events:

Transfer: Triggered when tokens are transferred between addresses.
Mint: Triggered when new tokens are minted.
Burn: Triggered when tokens are burned.
Security Considerations
Ownership: Ensure that the owner address is securely managed, as it has special privileges such as minting tokens.
Transfer Function: The transfer function includes authorization checks to ensure only authorized parties can transfer tokens.
