| 1) Srial no  | contract           | function                               | parameter                                                                                                                      |
|--------------|--------------------|----------------------------------------|--------------------------------------------------------------------------------------------------------------------------------|
| 1            | Single_nft 721     | approve                                | 1st - Contract adress , 2nd tokenid                                                                                            |
|              |                    | Burn                                   | tokenid                                                                                                                        |
|              |                    | createNFT                              | 1st -TokenURI , 2nd Fee                                                                                                        |
|              |                    | safeTransferFrom                       | 1st From -address 2nd -To Address 3rd -tokenid                                                                                 |
|              |                    | safeTransferFrom                       | 1st From -address 2nd -To Address 3rd -tokenid 4th data                                                                        |
|              |                    | setApproveforAll                       | 1st - operator adddress ,2nd Approve bool                                                                                      |
|              |                    | setBaseURI                             | 1st Base uri                                                                                                                   |
|              |                    | TransferFrom                           | 1st From -address 2nd -To Address 3rd -tokenid                                                                                 |
|              |                    | TransferOwnsership                     | New owner address                                                                                                              |
|              |                    |                                        |                                                                                                                                |
|              |                    | Balance of address of owner and others | Owner addres                                                                                                                   |
|              |                    | baseURI                                |                                                                                                                                |
|              |                    | GetApproved                            | tokenid                                                                                                                        |
|              |                    | GetCreator                             | tokenid                                                                                                                        |
|              |                    | ISApproveforAll                        | 1st - operator adddress ,2nd Approve bool                                                                                      |
|              |                    | name                                   |                                                                                                                                |
|              |                    | owner                                  |                                                                                                                                |
|              |                    | ownerof                                | tokenid                                                                                                                        |
|              |                    | royaltyfee                             | tokenid                                                                                                                        |
|              |                    | supportsinterface                      | byres4                                                                                                                         |
|              |                    | symbol                                 |                                                                                                                                |
|              |                    | tokenbyIndex                           | index                                                                                                                          |
|              |                    | tokenCounter                           |                                                                                                                                |
|              |                    | tokenbyownerbyindex                    | 1)owner2) index                                                                                                                |
|              |                    | tokenURI                               | tokenid                                                                                                                        |
|              |                    | totalSupply                            |                                                                                                                                |
| 1) Srial no  | Multi_nft_1155     |                                        |                                                                                                                                |
|              |                    | burn                                   | 1)tokenid 2) supply in unit                                                                                                    |
|              |                    | burnBatch                              | 1)tokenid 2) amount                                                                                                            |
|              |                    | createMultiple                         | 1)uri2)Supplier3)Fee                                                                                                           |
|              |                    | mintBatch                              | 1)to2)tokenid3)amounts4)data                                                                                                   |
|              |                    | safeBatchTransferFrom                  | 1)from address2)to address3) tokenid 4)amount 5)data                                                                           |
|              |                    | safeBatchTransferFrom                  | 1)from address2)to address3) tokenid 4)amount 5)data                                                                           |
|              |                    | setApproveforAll                       | 1st - operator adddress ,2nd Approve bool                                                                                      |
|              |                    | setBaseURI                             | baseURI                                                                                                                        |
|              |                    | TransferOwnsership                     | New owner address                                                                                                              |
|              |                    | balanceOf                              | 1)account 2) tokenid                                                                                                           |
|              |                    | balanceOfBatch                         | 1)accunts 2)ids                                                                                                                |
|              |                    | getCreator                             | tokenid                                                                                                                        |
|              |                    | ISApproveforAll                        | 1)accunts 2)operators                                                                                                          |
|              |                    | name                                   |                                                                                                                                |
|              |                    | owner                                  |                                                                                                                                |
|              |                    | Royaltyfee                             | tokenid                                                                                                                        |
|              |                    | supportsInterface                      | bytes                                                                                                                          |
|              |                    | symbol                                 |                                                                                                                                |
|              |                    | tokenURI                               | tokenid                                                                                                                        |
|              |                    | tokenURIPrifix call                    |                                                                                                                                |
|              |                    | totalSupply                            |                                                                                                                                |
| 1)3          | Arevea_token_ERC20 |                                        |                                                                                                                                |
|              |                    | approve                                | 1)spender address 2) amount                                                                                                    |
|              |                    | burn                                   | 1)amount                                                                                                                       |
|              |                    | burnfrom                               | 1)address2)amount                                                                                                              |
|              |                    | decreaseAllowance                      | 1)spender address 2) substractedValue                                                                                          |
|              |                    | increaseAllowance                      | 1)spender2)AddedValue                                                                                                          |
|              |                    | mint                                   | 1)account 2)amount                                                                                                             |
|              |                    | renounce owner                         | to cancel ownership                                                                                                            |
|              |                    | transfer                               | 1)to address 2)amount                                                                                                          |
|              |                    | tranferFrom                            | 1st - from adddress ,2nd to address 3rd amount                                                                                 |
|              |                    | transferOwnership                      | New owner address                                                                                                              |
|              |                    | allowance                              | 1)owner 2)spender                                                                                                              |
|              |                    | balancof                               | accont address                                                                                                                 |
|              |                    | decimals                               |                                                                                                                                |
|              |                    | DECIMALS                               |                                                                                                                                |
|              |                    | INITIALS_SUPPLY                        |                                                                                                                                |
|              |                    | Maximum_supply                         |                                                                                                                                |
|              |                    | name                                   |                                                                                                                                |
|              |                    | owner                                  |                                                                                                                                |
|              |                    | symbol                                 |                                                                                                                                |
|              |                    | totalSupply                            |                                                                                                                                |
| 1)4          | NFT Market 721     |                                        |                                                                                                                                |
|              |                    | _cancelAuctionSale                     | 1)_nftContractAddress: 2) _tokenId:                                                                                            |
|              |                    | buyAreveToken                          | 1)erc20 address2)_buyer3)_amount                                                                                               |
|              |                    | buyFromFixedSale                       | 1)nft contract address  2)tokenid 3)amount                                                                                     |
|              |                    | cancelFixedsale                        | 1)nft contract address  2)tokenid                                                                                              |
|              |                    | createNftAuctionSale                   | "1) _nftContractAddress: 2) _erc20: Address 3)_royaltyReciever: 4)_royalty5) _tokenid 6)Auction start:7)Auction_end:8)minPrice |
|              |
| "            |
|              |                    | makeBid                                | "1)_nftContractAddress:2) _tokenId:                                                                                            |
|              |
|              |                    | nftFixedSale                           | 1)nft contract address 2)erc20 3)Royalty4)tokenid 5)saleprice                                                                  |
|              |                    | Sell_Areveatoekn                       | 1)erc20 address2)_seller3)_amount                                                                                              |
|              |                    | set_maketFee                           | 1)maketFee                                                                                                                     |
|              |                    | set_Owner                              | 1)Owner_address                                                                                                                |
|              |                    | settleAuction                          | 1)_nftContractAddress 2)_tokenId:                                                                                              |
|              |                    | updateFixedSalePrice                   | 1)nft contact address 2)token id 3) updated sale price                                                                         |
|              |                    | updateTheBidPrice                      | 1)nft contact address 2)token id 3) updated Bid price                                                                          |
|              |                    | nftSaleStatus                          | 1)address2)amount                                                                                                              |
|              |                    | withdrawBid                            | 1)nft_addres2)tokenid                                                                                                          |
|              |                    | onERC721Received                       | 1)address2)address3)unit4)bytes                                                                                                |
|              |                    | getAuctionSellNFT                      |                                                                                                                                |
|              |                    | getFixeSale                            | 1)nft_address2)tokenid                                                                                                         |
|              |                    | getNftFixedSale                        |                                                                                                                                |
|              |                    | makeFee                                |                                                                                                                                |
|              |                    | nftSaleStatus                          | 1)Address 2)units                                                                                                              |
|              |                    | onERC721Received                       | 1)Address 2)from3)uint4)bytes                                                                                                  |
|              |                    | owner                                  |                                                                                                                                |
|              |                    | userBidPriceOnNFT                      | 1)Address2)units3)Address                                                                                                      |
| 1)5          | NFT Market 1155    |                                        |                                                                                                                                |
|              |                    | _cancelAuctionSale                     | 1)_nftContractAddress: 2) _tokenId:                                                                                            |
|              |                    | buyFromFixedSale                       | 1)nft contract address  2)tokenid 3)amount 4)NftAmount5)_leftnft 6)data                                                        |
|              |                    | cancelFixedsale                        | 1)nft contract address  2)tokenid 3)amount 4)leftAmount5)data                                                                  |
|              |                    | createNftAuctionSale                   | 1)AuctionTupple 2)data   3)nfttokenAddress 4)tokenid                                                                           |
|              |                    | makeBid                                | 1)Nft contract address 2)Tokenid 2)BidPrice                                                                                    |
|              |                    | nftFixedSale                           | 1)nft fixedsle tupple  2)nfttokenaddress  3)tokenid 4)data                                                                     |
|              |                    | setMarketFee                           | 1)fee                                                                                                                          |
|              |                    | setOwner                               | ownerAddress                                                                                                                   |
|              |                    | settleAuction                          | 1)_nftContractAddress 2)_tokenId:                                                                                              |
|              |                    | updateFixedSalePrice                   | 1)nft contact address 2)token id 3) updated sale price                                                                         |
|              |                    | updateTheBidPrice                      | 1)nft contract address  2)tokenid 3)updateBid price                                                                            |
|              |                    | withdrawBid                            | 1)Nft Contract address 2)Token id                                                                                              |
|              |                    | getAuctionSEllNFT                      |                                                                                                                                |
|              |                    | getFixedSale                           | 1)nftAddress2)tokenid3)Amount                                                                                                  |
|              |                    | getFixedSaleNFT                        |                                                                                                                                |
|              |                    | nftSaleStatus                          | 1)address2)amount                                                                                                              |
|              |                    | getNftAuctionSaleDetails               | 1)_nftContractAddress2)_tokenId:                                                                                               |
|              |                    | IID_IERC1155                           |                                                                                                                                |
|              |                    | inSale                                 | 1)address2)address3)unit                                                                                                       |
|              |                    | isERC1155                              | 1)nftAddress                                                                                                                   |
|              |                    | makeFee                                |                                                                                                                                |
|              |                    | nftSaleStatus                          | 1)Address 2)units                                                                                                              |
|              |                    | onERC1155BatchReceived                 | 1)Operator address 2) from address 3)ids 4_values 5)data bytes                                                                 |
|              |                    | onERC1155Received                      | 1)Operator address 2) from address 3)ids 4_values 5)data bytes                                                                 |
|              |                    | getFixedSaleNFT                        |                                                                                                                                |
|              |                    | owner                                  |                                                                                                                                |
|              |                    | userBidPriceOnNFT                      | 1)Address2)units3)Address                                                                                                      |
|              |                    |                                        |                                                                                                                                |
| 1)6          | Lazy mint          |                                        |                                                                                                                                |
|              |                    | Approve                                | 1)address 2toeknid                                                                                                             |
|              |                    | redeem                                 | 1)Reedeemer 2)v units 3)r bytes 4)s bytes 5)amount 6) voucher                                                                  |
|              |                    | renounceRole                           | 1) role 2) account address                                                                                                     |
|              |                    | safeTransferFrom                       | 1)from address 2) to address 3)tokenid                                                                                         |
|              |                    | setApproveforAll                       | 1st - operator adddress ,2nd Approve bool                                                                                      |
|              |                    | safeTransferFrom                       | 1)from address 2) to address 3)tokenid 4)data                                                                                  |
|              |                    | balanceOf                              | owner address                                                                                                                  |
|              |                    | chainid                                |                                                                                                                                |
|              |                    | executeSetlSignatureMatch              | 1)vuint2)bytes3)bytes4)tupple voucher                                                                                          |
|              |                    | get approved                           | token id                                                                                                                       |
|              |                    | get chain id                           |                                                                                                                                |
|              |                    | ISApproveforAll                        | 1)owner 2)operator                                                                                                             |
|              |                    | revokeRole                             | 1) role 2) account address                                                                                                     |
|              |                    | name                                   |                                                                                                                                |
|              |                    | Owner of                               | token id                                                                                                                       |
|              |                    | supportsinferface                      | 1)bytes                                                                                                                        |
|              |                    | symbol                                 |                                                                                                                                |
|              |                    | tokenURI                               | token id                                                                                                                       |
| 1)7          | BatchSelling       |                                        |                                                                                                                                
|     |              | BuyFromFixedSale       | 1)nftAddress2tokenid3)amount4)data                              |
|     |              | cancelFixedSale        | 1)nftAddress2tokenid3)amount4)data                              |
|     |              | nftFixedSale           | 1)nftAddress2)erd203)batchids4)amounts5)saleprice6)data         |
|     |              | setMakerFee            | \_makerFee                                                      |
|     |              | setOwner               | 1)owner 2)Address                                               |
|     |              | updateFixedSalePrice   | 1)nftContractAddres2)tokenid3)updateSalePrice                   |
|     |              | getCrrentTokenid       |                                                                 |
|     |              | getFixedSale           | 1)nftContractAddres2)tokenid                                    |
|     |              | getFixedSaleNFT        |                                                                 |
|     |              | IID\_IERC1155          |                                                                 |
|     |              | isERC1155              | 1)nft address                                                   |
|     |              | makerFee               |                                                                 |
|     |              | nftSaleSatatus         | 1)address 2uint                                                 |
|     |              | onERC1155BatchReceived | 1)Operator address 2) from address 3)ids 4\_values 5)data bytes |
|     |              | onERC1155BatchReceived | 1)Operator address 2) from address 3)ids 4\_values 5)data bytes |
|     |              | Owner                  |                                                                 |
                                              |
| 1)8 | BatchNfT |                       |                                                      |  |
|-----|----------|-----------------------|------------------------------------------------------|--|
|     |          | mintBatch             | 1)to2)ids3)amount4)data                              |  |
|     |          | mintNFT               | 1)to2)ids3)amount4)data                              |  |
|     |          | safeBatchTransferFrom | 1)from address2)to address3) tokenid 4)amount 5)data |  |
|     |          | safeTransferFrom      | 1)from address2)to address3) tokenid 4)amount 5)data |  |
|     |          | setApproveforAll      | 1)Operator address 2) Approved                       |  |
|     |          | balanceOf             | 1)account 2)ids                                      |  |
|     |          | balanceOf Batch       | 1)account 2)ids                                      |  |
|     |          | isApproveforAll       | 1)account 2)operators                                |  |
|     |          | supportsinferface     | 1)bytes                                              |  |
