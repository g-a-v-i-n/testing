// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import {Script, console} from "forge-std/Script.sol";
import {Render} from "../Render.sol";

/// @author loset.eth
contract deploy_render is Script {
    function run() public returns (address) {
        vm.startBroadcast();
        return _deploy();
    }

    function _deploy() internal returns (address) {
        return address(new Render());
    }
}
