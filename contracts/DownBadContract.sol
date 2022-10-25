// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import './ReentrancyGuard.sol';


contract DownBadContract is ReentrancyGuard {
    address private owner;
    uint256 private balance;

    constructor() {
        owner = msg.sender;
        balance = 0;
    }


    function getBalance() public view returns (uint256) {
        return balance;
    }

    function getOwner() public view returns (address) {
        return owner;
    }

    function setNewOwner(address newOwner) public returns (bool) {
      require(msg.sender == owner, "Only owner is allowed!");
      
      owner = newOwner;
      return true;
    }

    function donate() public payable {        
        require(msg.value >= 0, "Donation must be greater than 0");
        balance += msg.value;
    }


    function withdraw(
        address to,
        uint256 amount
    ) external returns (bool) {
        //require(msg.sender == ownAcc, "Only owner is allowed to withdraw!");
        require(amount > 0 ether && amount <= balance, "There is nothing to withdraw");

        payTo(to, amount);
        balance -= amount;

        return true;
    }

    function payTo(
        address to, 
        uint256 amount
    ) internal returns (bool) {
        (bool success,) = payable(to).call{value: amount}("");
        require(success, "Payment failed");
        return true;
    }
}