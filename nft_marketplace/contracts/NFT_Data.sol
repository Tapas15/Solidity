// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import "./NFT.sol";
import "./Events/Events.sol";
import "./Storage.sol";
import "./Modifiers/Modifiers.sol";


contract NFT_Data is Storage,NFT_Events,NFT_modifiers {
    
    
    constructor () {}
    
    // Metadata
        
    function Metadata(
        
        NFT _nft,
        address _owner,
        uint256 _tokenId,
        Category _category,
        string memory _name,
        string memory _uri,
        string memory _description,
        uint256 _price
        
            
        ) public {
            
            
            nft memory newnft = nft ({
                
                _NFT:_nft,
                owner: _owner,
                tokenId:_tokenId,
                category:_category,
                name:_name,
                uri:_uri,
                description:_description,
                price : _price,
                timestamp: block.timestamp,
                status:"open"
                
                
            });
            
            
           Allnfts.push(newnft);
           
           
        }
        
        
    //  get all NFTs   
    
    
    
    function getAllNFTs() public view returns (nft[] memory _nfts) {
        
        return Allnfts;
    }
    
    
    //  get my NFTs   
    
    
    
    function getMyNFTs() public view returns (nft[] memory _nfts) {
        
        uint Num   = Allnfts.length;
        uint Count = 0;
        
        for(uint256 i = 0; i < Num;i++) {
            
           nft storage N = Allnfts[i] ;
           
            if(N.owner == msg.sender) {
               
               Count +=1;
            }
            
            
        }
        
        
    }
    
    
    
    //  getNFTby contract Address
    
    
    function getNFTbyAddress (address _NFTAddress) public view returns(nft memory _nft)  {
        
        uint index;
        
        for (uint i=0; i< NFT_addresses.length; i++) {
            
            if (NFT_addresses[i] == _NFTAddress) {
                
                index = i ;
            }
            
        }    
            
             return getNFtByIndex(index);
        }
    
    
    //  get Nft by Index  
   
    function getNFtByIndex(uint index) public view returns (nft memory _nft) {
        
        nft memory newnft = Allnfts[index];
        
        return newnft;
    }
    
    
    // update ownership
    
    
    function updateOwnership(NFT _NFT,address _owner) public returns (bool) {
        
      uint256 Index = getIndex(address(_NFT));
    
      nft storage newnft = Allnfts[Index];
      
      newnft.owner = _owner;
      
      return true;
        
        
    }
    
    // update status
    
    
    function updatestatus(address _NFT,string memory _newstatus) public view returns (bool) {
        
     //   uint256 Index = getIndex(address(_NFT));
        
          nft memory N = getNFTbyAddress(_NFT);
      
          N.status = _newstatus;
      
          return true;
        
        
    }
    
    
    // update price 
    
    
    function updatePrice(address _NFT,uint256 _newPrice) public {
        
        
      uint256 Index = getIndex(address(_NFT));
    
      nft storage newnft = Allnfts[Index];
      
      newnft.price = _newPrice;
      
    }
    
    
    // getIndex of NFT
    
    
    function getIndex(address _NFT) internal view returns (uint) {
        
      address New_NfT = address(_NFT);
        
        uint index;
        
        for (uint i=0; i< NFT_addresses.length; i++) {
            
            if (NFT_addresses[i] == New_NfT) {
                
                index = i ;
            }
            
        } 
        
        return index;
            
    }
    
    
    
    
    
}