//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract MyContract{
    string public ourString = "Hello World";
    bytes public myByte = "Hello Me";

    address public myAddress;

    function updateOurString(string memory _updateString) public {
        ourString = _updateString;
    }

    function deleteOurString(string memory ourString1) public {
        ourString = ourString1;
    }

    function compareTwoStrings(string memory _mystring) public view returns(bool){
        return keccak256(abi.encodePacked(ourString)) == keccak256(abi.encodePacked(_mystring));
    }

    function setAddress(address _myAddress) public {
        myAddress = _myAddress;
    }

    function getBalance() public view returns (uint) {
        return myAddress.balance;
    }
}
