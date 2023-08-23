pragma solidity ^0.8.0;

contract TokenRegistry {
    mapping(string => address) public tokenAddresses;

    function registerToken(string memory tokenName, address tokenAddress) public {
        require(tokenAddresses[tokenName] == address(0), "Token is already registered");
        tokenAddresses[tokenName] = tokenAddress;
    }

    // Other functions for managing token registration
}
