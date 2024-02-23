// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;


import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

// SimpleStorage public simpleStorage;
SimpleStorage[] public listOfSimpleStorage;

// address[] public listOfSimpleStorageAddress;
function createSimpleStorage()public {

// simpleStorage = new SimpleStorage();
SimpleStorage newSimpleStorageContract = new SimpleStorage();
listOfSimpleStorage.push(newSimpleStorageContract);

}

function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber)public {
// Address
// ABI - Application Binary Interface

    // SimpleStorage mySimpleStorage = listOfSimpleStorage[_simpleStorageIndex];
    listOfSimpleStorage[_simpleStorageIndex].storeFunc(_newSimpleStorageNumber);

// Address needs to wrapped:  SimpleStorage(Address)
// SimpleStorage mySimpleStorage= SimpleStorage(listOfSimpleStorageAddress[_simpleStorageIndex]);
}

function getSf(uint256 _simpleStorageIndex)public view returns(uint256){
    // SimpleStorage mySimpleStorage = listOfSimpleStorage[_simpleStorageIndex];
    return listOfSimpleStorage[_simpleStorageIndex].retrieveFunc();
}




}
// I AM WATCHING A VIDEO ALONGSIDE SO I MIGHT APPEAR AS INACTIVE BUT I AM NOT.

// SUCCESS !!!!!