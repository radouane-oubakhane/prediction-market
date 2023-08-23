// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


contract Analytics {
    uint256 public totalPredictionEvents;
    mapping(uint256 => uint256) public eventParticipationCounts;

    function recordParticipation(uint256 eventId) public {
        eventParticipationCounts[eventId]++;
    }

    // Other functions for recording analytics
}
