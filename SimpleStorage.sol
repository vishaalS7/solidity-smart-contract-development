// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract SimpleStorage {

    uint256 myFavNumber; //0

    struct person {
        uint256 favNumber;
        string name;
    }

    person[] public listOfPeople;

    mapping (string => uint256) public callByName;

    function store (uint256 _favNum)public virtual  {
        myFavNumber = _favNum;
    }

    function retrive () public view returns (uint256){
        return myFavNumber;
    }

    function addPerson(string memory _Name, uint256 _favNumber) public {
        listOfPeople.push(person (_favNumber, _Name));
        callByName[_Name] = _favNumber;
    }
}