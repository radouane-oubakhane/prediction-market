pragma solidity ^0.8.0;

import "./OracleInterface.sol";

contract Oracle is OracleInterface {
    mapping(uint256 => uint8) public eventOutcomes;

    function setOutcome(uint256 eventId, uint8 outcome) public {
        // Implement logic to set the outcome by an authorized party
        eventOutcomes[eventId] = outcome;
    }

    function getOutcome(uint256 eventId) external view override returns (uint8) {
        return eventOutcomes[eventId];
    }
}
