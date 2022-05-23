//SPDX-License-Identifier:UNLICENSED
//@title Tapas My first solidty contract 
pragma solidity 0.8.14;
contract first_basic{
//This is our first smart contract
string private name; // sting specify variable type , private is access specifier mode ,name suggest variable name 
 uint private age;

// function name is set to go as input function
function setName(string memory _name) public {// function is keyword , setName is function name ,(its argument area)Public is type of view private or public , and returns a value
        name = _name;// variable inside function , we call it as input setName function 
        age = 18; // age
  }
// here the calling funtion to return name and age of person 

function getName() public view returns(string memory,uint)  // string memory pe return ho raha he
{
    return(name,age); // this function will retur name and age 
}




}