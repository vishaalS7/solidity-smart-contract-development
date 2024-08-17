// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage } from "./SimpleStorage.sol";

contract StorageFact{
    

    SimpleStorage [] public listOfContracts;


    function createSimpleStorage() public {
        SimpleStorage newSimpleStorageVar = new SimpleStorage();
        listOfContracts.push(newSimpleStorageVar);
    }

    //how to access the function store and retrive from the contract simpleStorage

    function sfStore(uint _SimpleStorageIndex, uint _newNumber) public { 
        listOfContracts[_SimpleStorageIndex].store(_newNumber); 
    }

    function sfGet(uint _simpleStorageIndex ) public view returns (uint){
        SimpleStorage myStore = listOfContracts[_simpleStorageIndex];
        return myStore.retrive();
    }


}