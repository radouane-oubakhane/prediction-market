// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./PredictionMarket.sol";

contract PredictionMarketFactory {
    address[] public predictionMarkets;

    function createPredictionMarket(string memory eventName) public {
        PredictionMarket newMarket = new PredictionMarket(eventName, msg.sender);
        predictionMarkets.push(address(newMarket));
    }
}