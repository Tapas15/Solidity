// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../NFT.sol";


contract NFT_Events {
    
    
    event NFTCreated (
      
      NFT _NFT,  
      address owner,
      string name,
      string Type
    
    );
        
        
    event OwnershipUpdated (
        
      NFT _NFT,
      uint256 tokenId,
      address _newOwner
        
    ); 
    
    event statusUpdated(
        
      NFT _NFT,
      uint256 tokenId,
      string _status 
        
    );
    
}
    
    
