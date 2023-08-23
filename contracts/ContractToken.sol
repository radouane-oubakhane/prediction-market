// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ContractToken is ERC20 {
    constructor() ERC20("ContractToken", "CT") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
