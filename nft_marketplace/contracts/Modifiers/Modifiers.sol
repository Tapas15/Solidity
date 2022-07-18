// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../NFT.sol";


contract NFT_modifiers {
    
    
    modifier notNull(address _address) {
        require(_address != address(0));
        _;
    }
}
    
