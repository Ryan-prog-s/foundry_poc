// SPDX-License-Identifier: MIT
 
pragma solidity 0.8.19;
 
contract SimpleStorage {
 
    uint256 public favoriteNumber;
 
    uint256[] listOfFavoriteNumbers;
 
    mapping (string => uint256) public favoriteNumberOf;
 
    struct Person {
        uint256 preferredNumber;
        string name;
    }
    
    Person[] public listOfPersons;
 
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        favoriteNumber = favoriteNumber + 1;
        
    }
 
    function retrieveFavoriteNumber() public view returns (uint256) {
        return favoriteNumber;
    }
 
    function addPerson(uint256 _number, string memory _name) public {
        listOfPersons.push(Person(_number, _name));
        favoriteNumberOf[_name] = _number;
    }
}