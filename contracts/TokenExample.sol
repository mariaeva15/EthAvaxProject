// SPDX-License-Identifier: MIT
// Compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract TokenExample {

    function requireTokens(uint _num) public pure returns (string memory) {
        require(_num > 100, "Please input a value greater than 100");
        return "Tokens Issued!";
    }

    function revertTokens(uint _num) public pure returns (string memory) {
        if (_num <= 100) {
            revert("Please input a value greater than 100");
        } else {
            return "Tokens Redeemed!";
        }
    }

    uint public tokenBalance = 0;

   function assertTokenBalance(uint _num) public pure returns (string memory) {
    if (_num == 0) {
        return "Assertion passed: _num is 0";
    } else {
        return "Assertion failed: _num is not equal to 0";
    }
}
}