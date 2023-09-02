// SPDX-License-Identifier: UNLICENCED
pragma solidity >=0.7.0 <0.9.0;
contract Token {
    string public name = "TOKEN";
    string public symbol = "TKN";
    uint256 public totalSupply;
    mapping(address => uint256) public balances;
    address public owner;
    constructor() {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can mint tokens");
        _;
    }
    function mint(address to, uint256 amount) public onlyOwner {
        totalSupply += amount;
        balances[to] += amount;
    }
    function transfer(address to, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }
    function burn(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        totalSupply -= amount;
    }
}
