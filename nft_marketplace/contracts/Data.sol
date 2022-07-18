// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./NFT.sol";

contract Data {

   
   constructor() {}
   
   
   enum Category{Image,Art,Music,Video}
   

    struct nft       {
        
        NFT _NFT;
        address owner;
        uint256 tokenId;
        Category category;
        string name;
        string uri;
        string description;
        uint256 price;
        uint256 timestamp;
        string status;
        
    }
    
    
}  
    
    
    
    




    
    
    
    










