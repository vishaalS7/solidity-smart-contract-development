// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage { 
    uint public myFavouriteNumber ; 

    // uint256[] public listOfPeople;

    struct person {
        uint favouriteNumber;
        string name;
    }


    person[] public listOfPeople;
    // person public vishh = person (7,"vishaal");
    // person public swe = person ( 8,"swetha");
    // person public aki = person (21, "akila" );

    mapping ( string => uint256) public nameToFavNumber;

    function store (uint _favNumber) public virtual {
        myFavouriteNumber = _favNumber;
    }

    function retrive() public view returns(uint256){
        return myFavouriteNumber;
    }

    function addPerson(string memory _name, uint _favNumber) public { 
        listOfPeople.push(person(_favNumber, _name));
        nameToFavNumber[_name] = _favNumber;
    }

}
