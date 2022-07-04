// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './SimpleStorage.sol';

// 继承 is 完全相同
contract ExtraStorage is SimpleStorage {
    // 重写方法 virtual override
    function store(uint256 _favoriteNum) public override {
        favoriteNum = _favoriteNum + 8;
    }
}
