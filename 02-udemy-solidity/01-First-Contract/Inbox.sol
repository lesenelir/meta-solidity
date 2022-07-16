// SPDX-License-Identifier: MIT
pragma solidity ^0.4.17;

contract Inbox {
    // 存储在区块链上的数据
    string public message;

    // constructor function 创建合约就自动调用构造函数
    function Inbox(string initialMessage) public {
        message = initialMessage;
    }

    function setMessage(string newMessage) public {
        message = newMessage;
    }

    // view constant 关键字
    // view 只读，但不可以修改合约中的数据
    // returns 只可能作用在view函数中
    // 多余的函数，solidity会为每一个合于中的变量声明一个调用函数
    function getMessage() public view returns (string) {
        return message;
    }

}


