// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


interface IAuctionContract {
    
    
    function createAuction(
      uint256 _tokenId,
      uint256 _Price,
      uint256 _duration
    ) external ;
    
    
   function placeBid(uint256 _tokenId) external payable ;
   
   function cancelAuction(uint256 _tokenId) external ;
        
   
    
    
    
    
    
    
    
    
}
   
