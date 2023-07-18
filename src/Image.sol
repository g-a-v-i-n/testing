// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Svg} from "svgmate/library/Svg.sol";
import {Rgb, RgbColor} from "svgmate/library/Rgb.sol";

string constant SVG_ATTRIBUTES =
    'width="100%" viewbox="0 0 1000 1000" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink= "http://www.w3.org/1999/xlink"';

contract Image {
    using Rgb for RgbColor;

    function _image(uint256, bytes32 _seed) internal pure returns (string memory) {
        return Svg.element("svg", SVG_ATTRIBUTES, _elements(_seed));
    }

    function _elements(bytes32 _seed) internal pure returns (string memory) {
        string memory circleAttributes =
            string.concat('cx="50%" cy="50%" r="50%" fill="', Rgb.getRandom(_seed).toString(), '"');

        return Svg.element("circle", circleAttributes);
    }
}
