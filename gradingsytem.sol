// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract functionality_gradingSystem {
    uint public x = 95; //subject1 marks
    uint public y = 33; // subject2 marks

    function requireEX(uint marks) public {
        require(marks != 0, "as students obtain only zero marks, so he/she is failed in exam");
        x = marks;
    }

    function assertEX() public view returns (uint, string memory) {
        uint add = x + y; // adding all grade marks
        assert(add >= 0);
        if (add >= 50) {
            return (add, "student is passed with good marks");
        } else {
            return (add, "student is failed");
        }
    }

    function revertEX(uint256 marks) public pure {
          if (marks <= 30) {
            revert("e grade");
        }
        else if (marks <= 50 || marks >30 )
        {
            revert("d grade");
        }
        else if (marks <= 70 || marks >50 )
        {
            revert("c grade");
        }
         else if (marks <= 80 || marks >70 )
        {
            revert("b grade");
        }
         else  
        {
            revert("a grade");
        }
    }
}
