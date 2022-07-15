// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdditionContract {
  function plus(uint a, uint b) public pure returns (uint) {
    return a + b;
  }
}

contract SubtractionContract {
  function minus(uint a, uint b) public pure returns (uint) {
    return a - b;
  }
}

contract MultiplicationContract {
  function times(uint a, uint b) public pure returns (uint) {
    return a * b;
  }
}

contract DividationContract {
  function dividedBy(uint a, uint b) public pure returns (uint) {
    return a / b;
  }
}

contract Calculator is AdditionContract, SubtractionContract, MultiplicationContract, DividationContract {}

contract ClientContract {

  function calculate(uint a, uint b) public returns (uint) {
    Calculator calc = new Calculator();
    uint result = calc.plus(a, b);
    return result;
  }
}