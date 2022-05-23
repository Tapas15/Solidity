pragma solidity 0.8.14;
/// @title A basic conctructor contract 
/// @author Tapas
/// @notice Basic only
/// @dev Explain to a developer any extra details
contract Greet {
    //it is the first empty type address variable will be set in constructer 
    address creator;
    //At first it is the empty string type variable to be used at time of greeting
    string  greeting ;
    //make a function to accept a sting input and saves into greeting variable
    function constuctor(string memory _greeting) public { //data location must be memory not string 
        creator = msg.sender; // setting message mode to collect msg from user
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting; // it resutns the msg to see the greeting made by 
        }
    
}