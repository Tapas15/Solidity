// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import "./NFT.sol";
import "./External/Pausable.sol";
import "./External/ReentrancyGuard.sol";
import "./External/SafeMath.sol";


contract AuctionContract is ReentrancyGuard,Pausable {
    
    using SafeMath for uint256;
    
    NFT _NFT;
    
    
    struct Auction {
        
      uint256 tokenId;
      uint256 Price;
      uint256 duration;
      bool result;
    }
    
    
    struct HighestBid {
        
      address payable bidder;
      uint256 bid;
      uint256 lastBidTime;
    
    }
    
   
   mapping(uint256 => HighestBid) public highestBids;
    

   mapping(uint256 => Auction) public auctions;
   
   
   Auction[] internal NumAuctions;
   
   
   
   // modifiers
   
   
    modifier onlyAfter {
        
       uint256 _tokenId;
       
       require (block.timestamp > auctions[_tokenId].duration);
       _;
    }
    
   
   
    modifier onlyBefore {
        
        uint256 _tokenId;
       
       require (block.timestamp < auctions[_tokenId].duration);
       _;
    }
    
    
    
   constructor() {} 
   
   
   function createAuction(
      uint256 _tokenId,
      uint256 _Price,
      uint256 _duration
    ) public  {
        
        
    Auction memory auction = Auction({
        
        tokenId:_tokenId,
        Price : _Price,
        duration : _duration,
        result : true
        
    });
    
    auctions[_tokenId] = auction;
    
    NumAuctions.push(auction);
        
        
    }  
    
    
    
    function placeBid(uint256 _tokenId) external payable nonReentrant() whenNotPaused {
        
        // check whether token exists
        
        Auction storage auction = auctions[_tokenId];

        uint256 bidAmount = msg.value;

        HighestBid storage highestBid = highestBids[_tokenId];
        
        // new bid
        
        uint256 newBid= highestBid.bid.add(bidAmount);
       

        if (highestBid.bidder != address(0)) {
            
            refund(highestBid.bidder, highestBid.bid);
        }
        
        // updating highestBid

        highestBid.bidder = payable(msg.sender);
        highestBid.bid = bidAmount;
        highestBid.lastBidTime = block.timestamp;

    }


   
   
   function cancelAuction(uint256 _tokenId) public onlyAfter onlyBefore {
       
        
        HighestBid storage highestBid = highestBids[_tokenId];
        
        
            if (highestBid.bidder != address(0)) {
                
                
                // Refunding to highest bidder
            
                refund(highestBid.bidder, highestBid.bid);

            
                delete highestBids[_tokenId];
            }

        
        delete auctions[_tokenId];

       
   }
    
    
    function finalize() public {
        
        uint256 tokenId;
        
        HighestBid storage highestBid = highestBids[tokenId];
        
        address winner = highestBid.bidder;
        
        _NFT.transferFrom(_NFT.ownerOf(tokenId), winner, tokenId);

    }
    
    
    
    function withdraw(uint256 _tokenId) public { 
        
        HighestBid storage highestBid = highestBids[_tokenId];
        
        delete highestBids[_tokenId];
        
        refund(highestBid.bidder,highestBid.bid);

    }
    
    
    // Internal and private functions
    
    
    
    function refund(address payable _Bidder, uint256 _HighestBid) private {
        
        (bool success,) = _Bidder.call{value : _HighestBid}("");
        
        require(success);
        
    } 
   
    
}