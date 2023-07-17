// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/BitMapHasMinted.sol";

contract BitMapHasMintedTest is Test {

    BitMapHasMinted public bitMapHasMinted;

    function setUp() public {
        bitMapHasMinted = new BitMapHasMinted();
    }

    function testSetHasMinted() public {

        uint256[] memory tokenIds = new uint256[](100);
        for (uint256 i = 0; i < 100; i++) {
            tokenIds[i] = uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, i))) % 10000;
        }

        bitMapHasMinted.setHasMinted(tokenIds);
    }
}