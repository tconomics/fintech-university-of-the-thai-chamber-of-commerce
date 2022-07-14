// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BytesContract {
  bytes1 defaultVal;
  bytes1 hexadecimalVal = 0x65;
  bytes1 integerVal = "9";
  bytes2 stringVal = "ok";
  bytes3 stringVal_1 = "the";
  bytes4 stringVal_2 = "this";
  bytes32 stringVal_3 = "kJbc1W1YupprLcB8YZE0gla1T8APE7Td";

  function getBytesValue() public view returns (bytes1) {
    return defaultVal; // return  0x
  }

  function getBytesHexadecimalValue() public view returns (bytes1) {
    return hexadecimalVal; // return  0x65
  }

  function getintegerValue() public view returns (bytes1) {
    return integerVal; // return 0x39
  }

  function getStringValue() public view returns (bytes2) {
    return stringVal; // return 0x6f6b
  }

  function getStringValueOne() public view returns (bytes3) {
    return stringVal_1; // return 0x746865
  }

  function getStringValueTwo() public view returns (bytes4) {
    return stringVal_2; // return 0x74686973
  }

  function getStringValueThree() public view returns (bytes32) {
    return stringVal_3; // return 0x6b4a626331573159757070724c634238595a4530676c61315438415045375464
  }
}