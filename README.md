# Simple Storage Contracts Project

This project demonstrates the use of multiple Solidity smart contracts for storing, retrieving, and managing data on the Ethereum blockchain. It includes a `SimpleStorage` contract, a `StorageFactory` to deploy and manage multiple storage instances, and an `Additive` contract to handle basic arithmetic operations.

## 📁 Contracts

### 1. `SimpleStorage.sol`
A basic contract that allows users to store and retrieve a `uint256` number.

#### Functions:
- `store(uint256 _number)`: Stores a number.
- `retrieve() view returns (uint256)`: Returns the currently stored number.

### 2. `StorageFactory.sol`
This contract allows deployment and management of multiple `SimpleStorage` contract instances.

#### Functions:
- `createSimpleStorageContract()`: Deploys a new `SimpleStorage` contract and tracks it.
- `sfStore(uint256 _index, uint256 _number)`: Stores a number in a specific `SimpleStorage` instance by index.
- `sfGet(uint256 _index) view returns (uint256)`: Retrieves a number from a specific `SimpleStorage` instance by index.

### 3. `Additive.sol`
A small utility contract that provides basic addition functionality.

#### Functions:
- `add(uint256 a, uint256 b) pure returns (uint256)`: Returns the sum of two numbers.

## 📚 Learning Acknowledgment

This project is part of my personal Solidity learning portfolio, inspired by and developed while following the `Cyfrin Updraft` learning track.

Many thanks to the Cyfrin team for creating such valuable educational content.
