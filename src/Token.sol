// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import {NFT} from "svgmate/NFT.sol";

string constant NAME = "My NFT Project";
string constant SYMBOL = "FUN";
uint256 constant PRICE = 0.01 ether;
uint256 constant MAX_SUPPLY = 10_000;

contract Token is NFT {
    constructor(address _render) NFT(NAME, SYMBOL, PRICE, MAX_SUPPLY, _render) {}
}
