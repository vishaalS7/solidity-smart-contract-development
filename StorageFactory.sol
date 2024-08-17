// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    // SimpleStorage public mySimpleStorage;
    SimpleStorage [] public listStorage;

    function createSimpleStorageContract () public {

        SimpleStorage newSimplevar = new SimpleStorage();
        listStorage.push(newSimplevar);

    }
}