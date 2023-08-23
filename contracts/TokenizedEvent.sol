pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract TokenizedEvent is ERC721 {
    constructor() ERC721("TokenizedEvent", "TE") {
        // Initialize tokenized events here
    }

    function mintEventToken(address recipient, uint256 eventId) public {
        _mint(recipient, eventId);
    }
}
