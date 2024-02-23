// SPDX-License-Identifier: MIT 
// pragma solidity 0.8.18; //Stating our version

pragma solidity ^0.8.18; // Any version above 0.8.18 will work

contract SimpleStorage{ // Same as a class in any Programming Language

//Basic Data Types in Solidity: int,boolean,uint,bytes,address
int initNum; // Number is assigned value 0 at the time of initialization if no value is provided. Also the variables value is internal
// int internal initNum // Syntax for declaration of an internal variable. Similarly, public keyword can be sued.
/*
bool hasFavNumber = true;
uint favNumber = 69; // uint can only be positive.
uint256 favNewNumber = 420; // It takes 256 bytes of space. BTW 1 byte = 8 bit.
int256 favNegNumber = -69; // Integer can be negative as well as positive.
string likeTheVid = "Subscribe to Bharat Mishra";
bytes32 favBytes32 = "pussyCat"; // Highest bytes is 32. ALso it can be accessed as 0x6f3e2 something.
address giveCrypto = 0x9A28AfA6313bDCEcE0362aBA7D91ED147cf40970;
*/


uint256[] listOfFavNumbers; 

struct Person{
    uint256 favNum;
    string favName;
}

// Person public favPerson = Person(7,"Bhanu"); // Both ways are valid.
Person public favPerson = Person({favNum:7,favName:"Bhanu"});


// Dynamic Array
Person[] public listOfPeople;

//Static Array
Person[4] public gistOfPeople;


// Functions in Solidity
 // Underscore _ before a declaration is  
 // This is a virtual function which can be overidden by its child classes.
function storeFunc(uint _aArg)public virtual{
initNum = int256(_aArg); // Explicit type conversion.
}
// view - Read-only functions.
// pure - No Reading No Writing.
function retrieveFunc() public view returns(uint256){
    return uint256(initNum);
}


// mappings are similar to dictionaries.
mapping(string => uint256) public nameToFavNum; 

// calldata, memory, storage
/*
memory is used only for one call
calldata and memory are stored temoporarlily
most data members are default to memory. strings, arrays, structs and mapping are special so they need to be specified.
memory variable is mutable while calldata is not.
*/
function addPerson(string memory _name, uint256 _favNumber)public{
    // Person memory favCursion = Person(_favNumber,_name);
    // listOfPeople.push(favCursion);
    listOfPeople.push(Person(_favNumber,_name));
    nameToFavNum[_name]=_favNumber;
}



// NOTE: Yellow Errors are OK. Red Errors are NOT OK.
}
