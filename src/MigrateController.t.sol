pragma solidity ^0.4.13;

import "ds-test/test.sol";

import "./MigrateController.sol";

contract MirateControllerTest is DSTest {
    MigrateController controller;
    PLS pls;

    function setUp() {
        pls = new PLS();
        controller = new MigrateController(address(pls));
    }

    function testFail_basic_sanity() {
        assertTrue(false);
    }

    function test_basic_sanity() {
        assertTrue(true);
    }

    function testFail_interface_call() {
        address a = address(pls);

        if(!a.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address)"))), 0x0, 0, 0x0)) { revert(); }
    }

    function test_interface_call() {
        address a = address(pls);

        if(!a.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address)"))), 0x0, 0, 0x0)) { 
            // Log Some Event here to record the fail. (some error throw or do not exist.)
            // Which means that the error throw can not been catch or revert the token already been transfered.
        }
    }
}
