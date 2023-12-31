// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {BitMaps} from "lib/openzeppelin-contracts/contracts/utils/structs/BitMaps.sol";

contract BitMapHasMinted {

    using BitMaps for BitMaps.BitMap;

    BitMaps.BitMap private hasMinted;

    function setHasMinted(uint256[] calldata tokenIds) public {
        for (uint256 i = 0; i < tokenIds.length; i++) {
            hasMinted.set(tokenIds[i]);
        }
    }

    function getHasMinted(uint256 tokenId) public view returns(bool) {
        return hasMinted.get(tokenId);
    }
}
