//SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SimpleStorage {
    uint256 private favoriteNumber; // Stores the user's favorite number

    uint256[] public favoriteNumbers; //Dynamic array to store multiple favorite numbers

    // Struct to store a person’s name and their favorite number
    struct Person {
        string name; // Person's name
        uint256 favoriteNumber; // Their favorite number
    }

    Person[] public people; // Array of Person structs to store multiple people's data

    // Enum to manage contract states (Active or Inactive)
    enum ContractState {
        Active, // State representing an active contract
        Inactive // State representing an inactive contract
    }

    ContractState public state; // State variable to store the current contract state

    //storeNumber function to store favoriteNumber
    function storeNumber(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    //getFavoriteNumer function to return favoriteNumber
    function getFavoriteNumer() public view returns (uint256) {
        return favoriteNumber;
    }

    //comparing a given value to favoritteNumber
    function isGreaterThan(uint256 _compareValue) public view returns (bool) {
        if (favoriteNumber > _compareValue) {
            return true;
        } else {
            return false;
        }
    }

    //sum numbers from 1 to favoriteNumber.

    function sumToFavoriteNumber() public view returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 1; i <= favoriteNumber; i++) {
            sum += i;
        }
        return sum;
    }

    //Internal function
    function internalFunction() internal pure returns (string memory) {
        return "Internal function"; // Internal: Can be accessed within this contract or derived contracts
    }

    // Wrapper function to expose internalFunction
    function callInternalFunction() public pure returns (string memory) {
        return internalFunction(); // Calls the internal function from within the contract
    }

    //external function
    function externalFunction() external pure returns (string memory) {
        return "External function"; // External: Can only be called from outside the contract
    }

    function testExternalFunction() public view returns (string memory) {
        return this.externalFunction(); // Calls the external function within the contract using 'this'
    }

    //a dynamic array to store multiple favorite numbers
    function addFavoriteNumber(uint256 _number) public {
        favoriteNumbers.push(_number);
    }
    

    //This struct helps organize and manage multiple pieces of related data as a single entity
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(Person(_name, _favoriteNumber));
    }

    //function activates contract state
    function activateContract() public {
        state = ContractState.Active;
    }

    //function to inactivate contract state
    function deactivateContract() public {
        state = ContractState.Inactive;
    }

    //function to check if contract state is active
    function isActive() public view returns (bool) {
        return state == ContractState.Active;
    }
}
