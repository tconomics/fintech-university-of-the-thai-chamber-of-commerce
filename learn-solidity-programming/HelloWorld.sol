// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {
  string private stateVariable = "Hello World Solidity";

  function GetHelloWorld() public view returns (string memory) {
    return stateVariable;
  }
}
