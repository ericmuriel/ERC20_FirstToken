// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts@5.1.0/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts@5.1.0/access/Ownable.sol";

contract MockUSDC is ERC20, Ownable {
    uint256 public immutable TOKEN_PRICE = 0.0001 ether;
    constructor()
        ERC20("MockUSDC", "USDC")
        Ownable(msg.sender)
    {
        _mint(msg.sender, 20_000_000 * 10 ** decimals());
    }

    /*function decimals() public override pure returns(uint8){
        //Override decimals function
        return 6;
    }*/
}
