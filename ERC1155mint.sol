// contracts/GameItems.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract GameItems is ERC1155 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
 
    constructor() public ERC1155("GameItem") {}
    
    function awardItem(address player, string memory tokenURI)
        public
        returns (uint256)
    {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
       _mint(msg.sender, newItemId, 1, "");
    }
}