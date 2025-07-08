// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "./simpleStorage.sol";

contract addFive is SimpleStorage {

    function store(uint _number) public override  { 
        myFavouriteNumber = _number + 5;
    }

}
