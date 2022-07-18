// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./NFT.sol";
import "./Events/Events.sol";
import "./Storage.sol";
import "./Modifiers/Modifiers.sol";
import "./MarketPlace.sol";
import "./NFT_Data.sol";
import "./External/Counters.sol";


contract TokenFactory is Storage,NFT_Events,NFT_modifiers ,ERC721("NFTs", "NFT") {
    
    using Counters for Counters.Counter;
    using SafeMath for uint256;
    using Address for address;
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableMap for EnumerableMap.UintToAddressMap;
    using Strings for uint256;

  
    Counters.Counter public numnfts;
    
    // Mapping from holder address to their (enumerable) set of owned tokens
   
    mapping (address => EnumerableSet.UintSet) private _holderTokens;

    // Enumerable mapping from token ids to their owners
    
    EnumerableMap.UintToAddressMap private _tokenOwners;

    // Mapping from token ID to approved address
   
    mapping (uint256 => address) private _tokenApprovals;

    // Mapping from owner to operator approvals
    
    mapping (address => mapping (address => bool)) private _operatorApprovals;

    
    
    // Data contract
    
       NFT_Data NEW_NFTData;
       
       NFT NFT_;  
       
       address NFT_MarketPlace;
       
       
    // constructor  
    
    
        constructor (NFT_Data _NFTdata, MarketPlace _MarketPlace) {
        
            NEW_NFTData = _NFTdata;
            
            NFT_MarketPlace = address(_MarketPlace);
        
        }
    
    
    // creating NFT
        
        
       function createNFT (
        
        string memory _symbol,             // ("cat","image","MYCat","image.io","MYcat is Unique",10)
        Category category,
        string memory _name,
        string memory _uri,
        string memory _description,
        uint256 _price
         
        ) public returns(address) { 
            
            // Incrementing num of nts
            
            numnfts.increment();
            
            uint256 _tokenId = numnfts.current();                   // incrementing tokenId  
      
            // creating new NFT 
            
            NFT Nft =  new NFT (msg.sender,_name,_symbol);
            
            // storing the contract address
            
            NFT_addresses.push(address(Nft));
            
            // Mint Token
            
            Nft.mint(msg.sender,_uri,_tokenId);
            
            // saving metadata of the contract
            
            NEW_NFTData.Metadata(Nft,msg.sender,_tokenId,category,_name,_uri,_description,_price);
            
           _holderTokens[msg.sender].add(_tokenId);

           _tokenOwners.set(_tokenId,msg.sender);

            // updating owner of tokenId
            
            owner[_tokenId] = msg.sender;
            
            // updating owners
            
            Owners.push(msg.sender);
            
            // mapping tokenId as creator
            
            creator[_tokenId] = msg.sender;
            
            // updating creators array
            
            creators.push(msg.sender);
            
            // updating balances of user
            
            balances[msg.sender] =  balances[msg.sender]+1;
            
            // mapping tokenId with deploy
            
            contractAddress[_tokenId]= address(Nft);
           
           // approve(NFT_MarketPlace, 1);
           
           
            // triggering an event.
           
        /*    emit NFTCreated(
      
               Nft,  
               msg.sender,
              _name,
              _NFTtype         
            
            );   */
            
            // returning tokenId 
         
            return address(Nft);
        
        } 
    
    
       
    // get deployed nft addresses   
  
    
    function getNFTAddresses() public view returns(address[] memory) {
        
        return NFT_addresses;
    }
    
    
    
    // get tokenId
    
    
    function getAddress(uint256 _tokenId) internal view returns(address) {

        return contractAddress[_tokenId];
    }
    
    
    // balance of
    
    
    function balanceOf(address owner) public view virtual override returns (uint256) {
        
        require(owner != address(0), "ERC721: balance query for the zero address");
        
        return _holderTokens[owner].length();
    }

    
    /**
     * @dev See {IERC721-ownerOf}.
     */
    
    function ownerOf(uint256 tokenId) public view virtual override returns (address) {
       
        return _tokenOwners.get(tokenId, "ERC721: owner query for nonexistent token");
    }

    
    // Approve


    function approve(address to, uint256 tokenId) public virtual override {

         address owner = owner[tokenId];

         address _NFT = getAddress(tokenId);

         require(to != owner, "ERC721: approval to current owner");

         IERC721(_NFT).approve(to,tokenId);
         
         _tokenApprovals[tokenId] = to;

    }


    
    //  Is Approved for all
    
    function isApprovedForAll(address owner, address operator) public view virtual override returns (bool) {
        
        return IERC721(NFT_).isApprovedForAll(owner,operator);
    }
    
    
    // transfer From 

    
    function transferFrom(address from,address to,uint256 tokenId) public virtual override {
        
       address _NFT = getAddress(tokenId);    

       IERC721(_NFT).transferFrom(from, to, tokenId);
       
       
       // Clear approvals from the previous owner
       _approve(address(0), tokenId);

       _holderTokens[from].remove(tokenId);
       _holderTokens[to].add(tokenId);

       _tokenOwners.set(tokenId, to);

       
    }
    
    
    
    // safe Transfer from
    
    
    function safeTransferFrom(address from,address to, uint256 tokenId) public virtual override {
        
        address _NFT = getAddress(tokenId);
        
        IERC721(_NFT).safeTransferFrom(from, to, tokenId, "");
    
        
    }
    
    
    // burn
    
    
    function burn(uint256 _tokenId) public virtual {
        
    //    require(msg.sender == IERC721(NFT_).ownerOf(_tokenId));
        
        address owner = owner[_tokenId];
        
        balances[owner] = balances[owner] -1;
        
        numnfts.decrement();
        
        delete contractAddress[_tokenId] ;
        
        
    }
    
    
    function setApprovalForAll(address operator, bool approved) public virtual override {
        
        require(operator != msg.sender, "ERC721: approve to caller");
        
        IERC721(NFT_).setApprovalForAll(operator,approved);
        
    }
    
    
    
}








