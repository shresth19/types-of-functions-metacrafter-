// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("MyToken", "MTK") {
        _mint(msg.sender, 100 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Custom burn function to burn a specific amount of tokens
    function burnTokens(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // Custom transfer function that burns a percentage of the transferred amount
    function transferWithBurn(address recipient, uint256 amount, uint256 burnPercentage) external returns (bool) {
        require(burnPercentage <= 100, "Burn percentage must be between 0 and 100");
        
        uint256 burnAmount = (amount * burnPercentage) / 100;
        uint256 transferAmount = amount - burnAmount;
        
        _burn(msg.sender, burnAmount);
        _transfer(msg.sender, recipient, transferAmount);
        
        return true;
    }
}
