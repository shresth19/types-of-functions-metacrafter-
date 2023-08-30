# MyToken ERC20 Smart Contract

This repository contains a basic ERC20 token smart contract named `MyToken`. The contract inherits from OpenZeppelin's `ERC20`, `ERC20Burnable`, and `Ownable` contracts, providing functionalities for creating, managing, and burning tokens.

## Overview

The `MyToken` contract offers the following features:

- Token name: MyToken
- Token symbol: MTK
- Initial supply: 100 tokens
- Minting: The owner can mint new tokens.

## Prerequisites

- Solidity compiler version 0.8.9 or compatible.
- Ethereum development environment (e.g., Remix, Truffle, Hardhat).

## Usage

1. Clone this repository.
2. Install the required dependencies using your package manager (e.g., npm or yarn) with `npm install` or `yarn install`.
3. Import the contract in your Ethereum development environment.
4. Compile the contract using Solidity 0.8.9 or a compatible version.
5. Deploy the contract to your desired Ethereum network.
6. Interact with the contract's functions using the appropriate method calls.

## Functionality

### Minting

The owner of the contract can mint new tokens using the `mint` function. This function creates and assigns additional tokens to a specified address.

##Licence
This smart contract is open-source and licensed under the MIT License. See the LICENSE file for more details.

