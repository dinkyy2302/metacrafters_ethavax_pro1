# Functionality Grading System Smart Contract

This Solidity smart contract uses the three essential Solidity features—`require', `assert', and `revert'}—to illustrate a grading system. Different use cases for these characteristics in handling error handling and contract logic management are shown by each function.

## Contract Overview

There are two public variables in the `functionality_gradingSystem' contract that are used to store subject marks.
- Three examples of how to utilize `require`, `assert`, and `revert` functions.

### State Variables

- `uint public x = 95;` - This variable holds the marks for subject 1.
- `uint public y = 33;` - This variable holds the marks for subject 2.

### Functions

#### `requireEX(uint marks)`

This function demonstrates the use of the `require` statement.

**Conditions:** 
  - {uint marks}: The grade the student received.
  
The `require' statement guarantees that the supplied 'marks' are not zero. The message "as students obtain only zero marks, so he/she is failed in exam" appears in the error message if {marks} is zero.
  - It changes the x variable with the supplied `marks' if marks is non-zero.

#### `assertEX()`

**Returns:**
  - {uint}: The sum of the marks that you get when you add {x} and {y}.
  - {string memory}: An indication of the student's passing or failing status.

**Logic:** - Adds the two topics' grades.
  - Makes use of {assert} to guarantee that the total of the marks is positive.
  - A message reflecting the student's passing is returned if the total is more than or equal to 50.
  - A message indicating the student's failure is returned if the sum is less than 50.

#### `revertEX(uint256 marks)`

This function demonstrates the use of the `revert` statement.


## Usage

To use this contract, deploy it to an Ethereum-compatible blockchain. You can then interact with the contract's functions to observe how `require`, `assert`, and `revert` statements manage error handling and control flow in different scenarios.

### Example Interactions

- **requireEX(uint marks):**
  - Call `requireEX(50)`. If `marks` is not zero, it will set `x` to 50. If `marks` is zero, it will throw an error.

- **assertEX():**
  - Call `assertEX()`. It will return the total marks of `x` and `y` and a message indicating whether the student has passed or failed.

- **revertEX(uint256 marks):**
  - Call `revertEX(20)`. It will revert with the message "e grade".
  - Call `revertEX(55)`. It will revert with the message "c grade".

## License

This contract is licensed under the MIT License.
