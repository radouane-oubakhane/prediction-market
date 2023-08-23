pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./Escrow.sol";

contract EscrowResolver is Ownable {
    Escrow public escrowContract;

    constructor(address _escrowContract) {
        escrowContract = Escrow(_escrowContract);
    }

    function resolveEscrow(uint256 eventId) public onlyOwner {
        // Implement logic to resolve escrowed funds for a specific event
        escrowContract.releaseEscrow(eventId, owner());
    }
}
