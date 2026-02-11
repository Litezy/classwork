// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Greeter} from "../src/Greeter.sol";

contract CounterScript is Script {
    Greeter public greeterInstance;

    function setUp() public {}

    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        greeterInstance = new Greeter();

        vm.stopBroadcast();
    }
}
