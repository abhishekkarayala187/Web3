// SPDX-License-Identifier: MIT
pragma solidity >=0.8.14;

contract MySecondContract {
    string public myString = "Hello World";
    bool public good;

    function hiString (string memory _abc) public {
        myString = _abc;
    }

    function setBool (bool _good) public {
        good = _good;
    }
}