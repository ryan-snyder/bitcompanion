// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BitCompanionToken is ERC20 {
    string public name = "BitCompanion";
    string public symbol = "BC";
    uint256 public decimals = 18;
    uint256 public INITIAL_SUPPLY = 12000;

    constructor() public {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
