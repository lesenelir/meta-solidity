// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Token {
    string public name = 'Lesenelir';
    string public symbol = 'MTN';
    uint256 public totalSupply = 1000000;
    address public owner;
    mapping(address => uint) public balances;

    constructor() {
        owner = msg.sender;
        balances[msg.sender] = totalSupply;
    }

    // 发币
    function transfer(address to, uint amount) external {
        balances[msg.sender] -= amount;
        balances[to] += amount - 1;
        balances[owner] += 1;
    }

    // 查询余额
    function balanceOf(address account) external view returns(uint) {
        return balances[account];
    }

}

