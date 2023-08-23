pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./Escrow.sol";

contract DisputeResolution is Ownable {
    Escrow public escrowContract;

    constructor(address _escrowContract) {
        escrowContract = Escrow(_escrowContract);
    }

    function resolveDispute(uint256 eventId, address winningOutcome) public onlyOwner {
        // Implement logic to resolve disputes and distribute funds accordingly
        escrowContract.releaseEscrow(eventId, winningOutcome);
    }
}
