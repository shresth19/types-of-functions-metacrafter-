# Token Smart Contract

This Solidity smart contract represents a basic token with functionalities for minting, transferring, and burning tokens.

## Token Details

- **Name**: TOKEN
- **Symbol**: TKN

## Contract Owner

The contract creator becomes the owner and has exclusive privileges for minting tokens.

## Functions

- **Mint Tokens**
  - Function: `mint(address to, uint256 amount)`
  - Description: Allows the owner to create and assign tokens to a specified address.
  - Usage: Only the owner can mint tokens.

- **Transfer Tokens**
  - Function: `transfer(address to, uint256 amount)`
  - Description: Enables token transfer from the sender's address to another address.
  - Usage: Ensure the sender has a sufficient token balance.

- **Burn Tokens**
  - Function: `burn(uint256 amount)`
  - Description: Allows a token holder to burn (destroy) their own tokens, reducing the total supply.
  - Usage: Ensure the sender has a sufficient token balance.

## Ownership Control

The `onlyOwner` modifier restricts certain functions to be callable only by the contract owner.

### SPDX-License-Identifier

This contract is provided without a specific license, meaning it has no particular usage restrictions or permissions associated with it. You can use and modify it as you see fit.

## Compatibility

This contract is compatible with Solidity versions greater than or equal to 0.7.0 and less than 0.9.0.
