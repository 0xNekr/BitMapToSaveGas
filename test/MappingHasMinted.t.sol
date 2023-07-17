// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/MappingHasMinted.sol";

contract MappingHasMintedTest is Test {

    MappingHasMinted public mappingHasMinted;

    function setUp() public {
        mappingHasMinted = new MappingHasMinted();
    }

    function testSetHasMinted() public {

        uint256[] memory tokenIds = new uint256[](100);
        for (uint256 i = 0; i < 100; i++) {
            tokenIds[i] = uint256(keccak256(abi.encodePacked(block.timestamp, block.prevrandao, i))) % 10000;
        }

        mappingHasMinted.setHasMinted(tokenIds);
    }
}