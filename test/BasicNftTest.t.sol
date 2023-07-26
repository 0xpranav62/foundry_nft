// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {Test} from "forge-std/Test.sol";
import {BasicNft} from "../src/BasicNft.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol";

contract BasicNftTest is Test {
    BasicNft public basicNft;
    DeployBasicNft public deployer;

    function setUp() public {
        deployer = new DeployBasicNft();
        basicNft = deployer.run();
    }

    // Testing
    function testIfNameIsCorrect() public view {
        string memory actualName = "Pepe";
        string memory expectedName = basicNft.name();
        assert(
            keccak256(abi.encodePacked(actualName)) ==
                keccak256(abi.encodePacked(expectedName))
        );
    }
}
