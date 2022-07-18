// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./External/ERC721.sol";
import "./External/Counters.sol";
import "./External/SafeMath.sol";
import "./External/Ownable.sol";

contract NFT is ERC721,Ownable {

    
    // constructor

    
    constructor (address owner,string memory name, string memory symbol) ERC721(name, symbol) {
        
        _baseURI();
        
    }
   
   
   //  Minting a token
   
   
    function mint(address to, string memory tokenURI,uint256 _tokenId) public returns (uint256) {
   
        require(totalSupply() == 0, "Fixed supply is 1");
       
       _mint(to, _tokenId);                      // mint

       _setTokenURI(_tokenId, tokenURI);         // setting tokenURI

        return _tokenId;                         // tokenId of an nft 
    
    }
    
    
    
    // approve 
    
    
    function approve(address to, uint256 tokenId) public virtual override {
        
        address owner = ERC721.ownerOf(tokenId);
        
        require(to != owner, "ERC721: approval to current owner");
        
        require(msg.sender == owner || isApprovedForAll(owner, msg.sender),"ERC721: approve caller is not owner nor approved for all");
        
        _approve(to, tokenId);
    }
    
    
    // transferFrom
    
    
    function transferFrom(address from,address to,uint256 tokenId ) public virtual override {

        require(_isApprovedOrOwner(_msgSender(), tokenId), "ERC721: transfer caller is not owner nor approved");

        _transfer(from, to, tokenId);
    }
    
    
    // Internal function
    
    
    // is ApprovedOrOwner
    
    
    function _isApprovedOrOwner(address spender, uint256 tokenId) internal view virtual override returns (bool) {
        
        require(ERC721.ownerOf(tokenId)!=address(0), "ERC721: operator query for nonexistent token");
        
        address owner = ERC721.ownerOf(tokenId);
       
        return (spender == owner || getApproved(tokenId) == spender || isApprovedForAll(owner, spender));
    }


   // base tokenURI
    
    
    function _baseURI() internal view virtual override returns (string memory) {
        
        return "https://ipfs.io/ipfs/";
    }

    
    
}   