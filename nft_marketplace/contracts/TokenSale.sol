// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./External/Ownable.sol";
import "./External/SafeMath.sol";
import "./NFT.sol";
import "./Data.sol";
import "./TokenFactory.sol";
import "./External/ERC721.sol";
import "./NFT_Data.sol";

contract TokenSale {
    
    
    // NFT internal _NFT;
    
    NFT_Data internal nftData;
    
    // Type of Sale options
    
    enum SALEType{Fixed,Dynamic,Auction}
    
    // structure of Token On sale
    
    struct TokenOnSale {
        
        SALEType Type;
        address seller;
        uint256 tokenId;
        uint256 price;
        string status;
    }
    
    // mappings
    
    mapping(uint256 => bool) public IdForSale;
    
    mapping (uint256 => TokenOnSale) public Sale;
    
    // Sale count
    
    uint256 public Salecount;
    
    // address of AuctionContract
    
    address AuctionContract;
    
    
    // constructor
    
    constructor (NFT_Data _NFTData,IAuctionContract _auction) {
         
       nftData=_NFTData;
       
       AuctionContract = address(_auction);
         
       Salecount = 0;  // Initial sale Count
      
    }
    
    
    //  Listing for sale.
        
    
    function sellNFT(
        
        NFT  _NewNFT,
        SALEType _Type,
        uint256 _tokenId,
        uint256 _price,
        uint256 _duration
        
    )  public returns (uint256) {
        
       // Incrementing sale Count
       
       Salecount = Salecount+1 ;
       
       if(_Type == SALEType.Fixed || _Type == SALEType.Dynamic) {
           
        require(_duration == 0,"This Field is only for auction");
        
       }
       
       if(_Type == SALEType.Auction) {
           
           
        // creating Auction   
           
        IAuctionContract(AuctionContract).createAuction(_tokenId,_price,_duration) ;
           
           
        }
       
       TokenOnSale memory  List = TokenOnSale ({
           
           Type   : _Type,
           seller : msg.sender,
           tokenId: _tokenId,
           price : _price,
           status: "onSale"
           
       });
       
       
       Sale[_tokenId] = List;
       
       // setting Id as true
       
       IdForSale[_tokenId] = true;
       
       // transferring token 
       
       IERC721(_NewNFT).transferFrom(msg.sender,address(this),_tokenId) ;
       
       // returning tokenId that has listed for sale
       
       return _tokenId;
       
       
    }
    
    //   cancelling the sale item.
    
     function cancelSale (uint256 _tokenId) external  {
         
    //  nftData.updatestatus(_NFT,_tokenId,"cancelled");
    
      require(_tokenId > 0, "Invalid token id");   // token Id should not be 0
    
      delete Sale[_tokenId];                       //  deleting Item tokenId
     
      IdForSale[_tokenId] = false;                 //  setting to false.
  
         
     }
     
     
    // Place Bid
    
    
    function placeBid(uint256 _tokenId) public {
        
        require(IdForSale[_tokenId]==true, "placing bid for non existing tokensale");
        
        IAuctionContract(AuctionContract).placeBid(_tokenId);
    }
    


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
