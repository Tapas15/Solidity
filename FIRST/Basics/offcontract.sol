//SPDX-License-Identifier:UNLICENSED
//@title Tapas My first solidty contract 
pragma solidity 0.8.14;
contract first_basic{
//This is our first smart contract
string private name; // sting variable can be private or public 

function setName(string memory _name) public {
    name = _name;

}




}