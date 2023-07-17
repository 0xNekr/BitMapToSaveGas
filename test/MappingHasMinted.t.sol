// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/MappingHasMinted.sol";

contract MappingHasMintedTest is Test {

    MappingHasMinted public bitMapToSaveGas;

    function setUp() public {
        bitMapToSaveGas = new MappingHasMinted();
    }

    function testSetHasMinted() public {
        for (uint256 i = 0; i < 100; i++) {
            bitMapToSaveGas.setHasMinted(i);
            assertEq(bitMapToSaveGas.hasMinted(i), true);
        }
    }
}