// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BoolContract {
  bool isNotPaid = true;
  uint8 firstNumber = 10;
  uint8 secondNumber = 20;

  function checksum() public view returns (uint8) {
    uint8 sum = firstNumber + secondNumber;
      return sum;
    }

  function checkout() public returns (bool _param) {
      if (checksum() == 30 && isNotPaid) {
          isNotPaid = false;
          return isNotPaid;
      }
  }
}
