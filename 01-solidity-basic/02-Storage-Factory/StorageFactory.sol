// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './SimpleStorage.sol';

contract StorageFactory {
    // 声明一个类型为SimpleStorage类型的数组变量
    // 该数组存储合约的地址
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage(); // 新创建的合约地址变量
        simpleStorageArray.push(simpleStorage);
    }

    // 怎么与合约进行交互 interact with other contract
    // 1. Address
    // 2. ABI Application Binary interface
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNum) public {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNum);
    }

    // 读取SimpleStorage合约的值 - retrieve方法
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }

}
