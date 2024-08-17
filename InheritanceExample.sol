// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract InheritanceExample is SimpleStorage {

    function store(uint _newNumber) public override  {
        myFavNumber = _newNumber + 5;
    }
}