pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MonolpToken is ERC20 {
    constructor (string memory name, string memory symbol)
        ERC20(name, symbol)
        public
    {
        // Mint 42000 tokens to msg.sender
        // 1 token = 1 * (10 ** decimals)
        _mint(msg.sender, 42000 * 10 ** uint(decimals()));
    }
}