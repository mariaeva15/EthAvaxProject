# ETH + AVAX Assessment

## Introduction
This Solidity project provides a practical demonstration of error handling using the require, revert, and assert functions in Solidity smart contracts.

## Description
Solidity smart contracts often need to enforce specific conditions to ensure the security and integrity of blockchain applications. Three commonly used error handling mechanisms are:

**require**: The require statement is used to check conditions that must be met for the contract to continue executing. If the condition is not met, the transaction is reverted, and any changes made are undone. We use require for essential conditions that should never fail.

**revert**: The revert statement is used to explicitly revert the execution of a function. It's often used when you want to intentionally revert the transaction, providing a custom error message. This is useful for handling specific cases or creating more descriptive error messages.

**assert**: The assert statement is used to check for internal errors or unexpected conditions. Unlike require, assert should only be used for conditions that indicate a bug or a critical issue. If the condition in assert fails, the contract is forced into an invalid state.

## Getting Started
### Running the Program
To run the program using GitPod, follow these steps:

1. Install Node.js: Download and install from the https://nodejs.org.

2. Install Truffle: Run the following command to install Truffle globally: (https://github.com/trufflesuite/truffle)

    ```npm install -g truffle ```
    
4. Start Truffle console in development mode: Use the following command to start the Truffle console in development mode 
    (Note: Ctrl + D to exit the Truffle development mode):
    
    ``` truffle develop ```
    
5. Compile and Migrate Contracts: In the Truffle console, execute the following commands to compile and migrate the contracts:

        compile
        migrate

  
6. Test and Run the Functions require(), assert(), revert(): In the interactive Truffle console, run the following commands (replace "instance" with any variable name):

### For require():
 ```javascript
    let instance = await TokenExample.deployed()
    instance.requireTokens(_num) 
 ```
### For revert():
 ```javascript
    instance.revertTokens(_num)
 ```
#### For assert():
 ```javascript
     instance.assertTokenBalance(_num)
 ```
Make sure to input a value to **_num**.
### To use this contract, you can follow the instructions below:

#### requireTokens function using require:

This function checks if the input _num is greater than 100 using the require statement. If _num is not greater than 100, it will revert the transaction with the specified error message.

#### revertTokens function using revert:

This function checks if the input _num is less than or equal to 100. If it is, it will revert the transaction with the specified error message. If _num is greater than 100, it will return "Tokens Redeemed!"

### assertTokenBalance function using assert:

This function uses the assert statement to ensure that _num is equal to 0. If _num is not equal to 0, it will trigger an assertion failure.

### Authors
Maria Evangelicalyn Ong

### License
This project is licensed under the MIT License. See the LICENSE.md file for details.
