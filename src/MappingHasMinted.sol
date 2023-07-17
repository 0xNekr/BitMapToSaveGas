// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

contract MappingHasMinted {

    mapping (uint256 => bool) public hasMinted;

    function setHasMinted(uint256[] calldata tokenIds) public {
        for (uint256 i = 0; i < tokenIds.length; i++) {
            hasMinted[tokenIds[i]] = true;
        }
    }

}
