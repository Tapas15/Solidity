// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./External/Ownable.sol";
import "./External/SafeMath.sol";
import "./NFT.sol";
import "./Data.sol";
import "./TokenSale.sol";
import "./External/ReentrancyGuard.sol";

contract MarketPlace is TokenSale,ReentrancyGuard{
    
    using SafeMath for uint256;
    
    // address public market_place;
    
    NFT_Data public NftData;
    
    // constructor
    
     constructor(NFT_Data _NFTData,IAuctionContract _auction)  TokenSale(_NFTData,_auction) {
        
       NftData = _NFTData;
       
    //   address payable market_place = payable (address(uint160(address(this))));
    
    }
    
    
    function buyToken (NFT _NFT,uint256 tokenId) public payable returns(string memory _status) {
        
        // address

        address New_Nft = address(_NFT);
        
        //fetching  
        
        NFT_Data.nft memory _newnft  = NftData.getNFTbyAddress(New_Nft);
        
        address  _seller = _newnft.owner;
        
        address payable seller = payable(_seller);
        
        uint256 amount = _newnft.price;
        
        require(msg.value == amount ,"please send exact amount");
        
        seller.transfer(amount);
        
        address buyer = msg.sender;
        
        IERC721(_NFT).transferFrom(address(this),msg.sender,tokenId);

        NftData.updateOwnership(_NFT,buyer);
        
        NftData.updatestatus(New_Nft,"sold");
        
        return _status;
    }

    
    
}

