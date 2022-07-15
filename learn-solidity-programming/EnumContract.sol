// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnumContract {
  enum ActionChoices { SleepStill, GoWork, GoRetirement }
  ActionChoices choice;
  ActionChoices constant defaultChoice = ActionChoices.SleepStill;

  bool success = false;
  uint public salary;
  uint public jobs;
  uint public bankAccount;

  function getDefaultChoice() public pure returns (uint) {
    return uint(defaultChoice);
  }

  function getHired() public {
    jobs += 1;
    salary += 1000;
    choice = ActionChoices.GoWork;
  }

  function getChoice() public view returns (ActionChoices) {
    return choice;
  }

  function getWealth() public returns (uint) {
    bankAccount += salary;
    return bankAccount;
  }

  function getRetirement() public returns (ActionChoices) {
    if (bankAccount > 5000) {
      choice = ActionChoices.GoRetirement;
      return choice;
    } else {
      return choice;
    }
  }
}