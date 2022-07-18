// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import  "./Data.sol" ;


contract Storage is Data {
    
    // tokenIds
    
    uint256[] public tokenIds;
    
    // owners
    
    address[] public Owners;
    
    mapping(address => uint256) public balances;
    
    // creators
    
    mapping(uint256 => address) internal creator;
    
    address[] public creators;
    
    mapping(address => bool) public isOwner;
    
    // Mapping from token ID to owner address
    
    mapping(uint256 => address) internal owner;
    
    // Mapping from token ID to approved address
    
    mapping(uint256 => address) internal tokenApprovals;
    
    // Mapping from owner to operator approvals
    
    mapping(address => mapping(address => bool)) internal operatorApprovals;
    
    mapping(uint256 => address) internal contractAddress;
    
    // Array of Allnfts

    nft[] public Allnfts;
    
    // num of NFTs
    
    // uint256 public numnfts;
    
    // array of NFT Addresses
    
    address[] public NFT_addresses;
    
    mapping(address => nft) nftAddresses;
    
    mapping(uint256 => uint256) public Price;
    
    
    
    
    
    
}   