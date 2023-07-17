// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

contract MappingHasMinted {

    mapping (uint256 => bool) public hasMinted;

    function setHasMinted(uint256 tokenId) public {
        hasMinted[tokenId] = true;
    }

}
