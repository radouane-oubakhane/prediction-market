pragma solidity ^0.8.0;

interface OracleInterface {
    function getOutcome(uint256 eventId) external returns (uint8);
}
