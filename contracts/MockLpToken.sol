
// SPDX-License-Identifier: MIT
// MockLpToken.sol

pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

/**
* @title MockLpToken is a basic ERC1155 Token
*/
contract MockLpTokens is ERC1155 {
    address public owner;
    uint256 public MockLpCount;
    
    modifier onlyOwner() {
        require(msg.sender == owner, "only owner can call this");
        
        _;
    }
    // Initialize the contract owner to owner and initial MockLpCount to zero.
    constructor(address owner_) public ERC1155("") {
        owner = owner_;
        MockLpCount = 0;
    }
    
    /**
     * @notice A method to add a new MockLpToken.
     * @param initialSupply The new MockLpToken initial supply.
     * @dev only the owner of the contract can add a new token
     */
    function addNewMockLpToken(uint256 initialSupply) external onlyOwner {
        MockLpCount++;
        uint256 MockLpTokenClassId = MockLpCount;

        _mint(msg.sender, MockLpTokenClassId, initialSupply, "");        
    }
}
