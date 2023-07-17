// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/BitMapHasMinted.sol";

contract BitMapHasMintedTest is Test {

    BitMapHasMinted public bitMapToSaveGas;

    function setUp() public {
        bitMapToSaveGas = new BitMapHasMinted();
    }

    function testSetHasMinted() public {
        for (uint256 i = 0; i < 100; i++) {
            bitMapToSaveGas.setHasMinted(i);
            assertEq(bitMapToSaveGas.getHasMinted(i), true);
        }
    }
}