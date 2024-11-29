// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts@5.1.0/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts@5.1.0/access/Ownable.sol";

contract EmurielToken is ERC20, Ownable {
    uint256 public immutable TOKEN_PRICE = 0.0001 ether;
    constructor()
        ERC20("EmurielToken", "EMD")
        Ownable(msg.sender)
    {
        _mint(msg.sender, 20_000_000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public payable {
        require(msg.value >= amount * TOKEN_PRICE, "Send more ether");
        _mint(to, amount);
    }
}
