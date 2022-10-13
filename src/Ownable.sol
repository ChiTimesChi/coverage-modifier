// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

abstract contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "!owner");
        _;
    }
}
