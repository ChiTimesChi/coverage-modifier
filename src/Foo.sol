// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./Ownable.sol";

contract Foo is Ownable {
    event FooEvent();

    function foo() external onlyOwner {
        emit FooEvent();
    }
}
