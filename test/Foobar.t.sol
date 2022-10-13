// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Foo.sol";
import "../src/Bar.sol";

contract FoobarTest is Test {
    event BarEvent();
    event FooEvent();

    Foo internal foo;
    Bar internal bar;

    function setUp() public {
        foo = new Foo();
        bar = new Bar();
    }

    function testFooAsOwner() public {
        vm.expectEmit(true, true, true, true);
        emit FooEvent();
        foo.foo();
    }

    function testBarAsOwner() public {
        vm.expectEmit(true, true, true, true);
        emit BarEvent();
        bar.bar();
    }
}
