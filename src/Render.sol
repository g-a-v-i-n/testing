// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Render as SVGNFTRender} from "svgmate/Render.sol";
import {String} from "svgmate/library/String.sol";
import {Image} from "./Image.sol";

contract Render is SVGNFTRender, Image {
    using String for uint256;

    string constant TOKEN_NAME_PREFIX = "SVG NFT";

    function name(uint256 _tokenId, bytes32) public pure override returns (string memory) {
        return string.concat(TOKEN_NAME_PREFIX, " ", _tokenId.toString(4));
    }

    function description(uint256, bytes32) public pure override returns (string memory) {
        return "description";
    }

    function attributes(uint256, bytes32) public pure override returns (string memory) {
        return "[]";
    }

    function image(uint256 _tokenId, bytes32 _seed) public pure override returns (string memory) {
        return _image(_tokenId, _seed);
    }
}
