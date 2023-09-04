# MyToken - Simple ERC-20 Token

MyToken is a basic ERC-20 token implemented in Solidity, utilizing the OpenZeppelin library for standards compliance. This contract allows for the minting of tokens by the contract owner, token transfers by any user, and burning of tokens by any user.

## Features

1. **Minting Tokens:** Only the contract owner has the ability to mint new tokens. This feature can be useful for initial token distribution or creating additional tokens as needed.

2. **Token Transfers:** Any user can transfer tokens to other addresses using the `transferTokens` function. This enables users to send tokens to other participants on the network.

3. **Token Burning:** Users can burn (destroy) their own tokens using the `burnTokens` function. This can be helpful for reducing the total token supply or managing token balances.

## Usage

To use this ERC-20 token contract, you should:

1. Deploy the contract on an Ethereum-compatible blockchain network.
2. Set the contract owner during deployment.
3. Mint initial tokens to the contract owner or other addresses as needed.
4. Users can transfer tokens using the `transferTokens` function.
5. Users can burn tokens using the `burnTokens` function.

## Getting Started

To get started, you'll need the following:

- Solidity development environment
- Truffle or Remix for contract deployment and interaction
- OpenZeppelin Solidity library

## Deployment

Deploy the contract on an Ethereum-compatible blockchain network, and ensure you set the contract owner and initial token supply during deployment.

## License

This code is open-source and available under the MIT License. Feel free to use, modify, or distribute it as needed.

## Disclaimer

This is a basic ERC-20 token contract intended for educational purposes. Ensure you understand the implications of deploying and managing tokens on the Ethereum blockchain before using it in a production environment.
