// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Adoption {
    address[16] public adopters; //16 adopters in total in array

    //Adopting a pet
    function adopt(uint256 petId) public returns (uint256) {
        require(petId >= 0 && petId <= 15); // Indexed from 0, values is between 0-15 (16 in total)

        adopters[petId] = msg.sender;

        return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
