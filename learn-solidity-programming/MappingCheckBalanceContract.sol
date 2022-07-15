// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingContract {
  mapping(address => uint) public balances;

  function set(address _addr, uint _i) public {
    balances[_addr] = _i;
  }

  function get(address _addr) public view returns (uint) {
    return balances[_addr];
  }

  function remove(address _addr) public {
    delete balances[_addr];
  }
}