// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./Ownable.sol";

contract Bar is Ownable {
    event BarEvent();

    function bar() external {
        require(owner == msg.sender, "!owner");
        emit BarEvent();
    }
}
