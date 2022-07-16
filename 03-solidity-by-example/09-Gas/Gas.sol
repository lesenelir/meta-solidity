// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Gas {
    uint public i = 0;

    // 使用所有gas，直至交易失败
    function forever() public {
        // 此处循环，花费所有gas spent，直至没有
        // 随后交易失败
        while (true) {
            i += 1;
        }
    }

}
