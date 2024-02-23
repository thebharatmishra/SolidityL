// SPDX-License-Indentifier : MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "SimpleStorage.sol";

// Inheritance
contract AddFiveStorage is SimpleStorage{

function sayHello() public pure returns(string memory){
    return "Hello";
}

// To add +5 to the storeFunc function we need to OVERRIDE.
// keywords used: virtual & override.
// Parent Function should have virtual keyword specified in order for it to be overidden.
function storeFunc(uint256 _newNumber) public override{
initNum = int256(_newNumber + 5);
}



}