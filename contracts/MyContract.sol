//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract MyContract{
    string public ourString = "Hello World";
    bytes myBytes = "Hello";

    function updateOurString(string memory _updateString) public {
        ourString = _updateString;
    }

    //compare two strings in read function using keccak256 hash
    function compareTwoStrings(string memory _updateString) public view returns(bool){
        return keccak256(abi.encodePacked(ourString)) == keccak256(abi.encodePacked(_updateString));
    }
}