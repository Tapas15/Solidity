const Web3 = require('web3');
const { Contract } = require('web3-eth-contract');

const nftdata     = require ("../build/contracts/NFT_Data.json")
const MarketPlace = require("../build/contracts/MarketPlace.json");
const TokenFactory= require("../build/contracts/TokenFactory.json");

const express = require("express");
const router = express.Router();
const app = express();


const init = async () => {

    if (typeof web3 !== 'undefined') {
        var web3 = new Web3(web3.currentProvider)
    } else {
        var web3 = new Web3(new Web3.providers.HttpProvider('http://127.0.0.1:9545'))

        const networkId = await web3.eth.net.getId();

        const myContract1 = new web3.eth.Contract(
            nftdata.abi,
            nftdata.networks[networkId].address
        );
    
       const myContract2 = new web3.eth.Contract(
            MarketPlace.abi,
            MarketPlace.networks[networkId].address
        );
    
        const myContract3 = new web3.eth.Contract(
            TokenFactory.abi,
            TokenFactory.networks[networkId].address
        );
    

     const addresses = await web3.eth.getAccounts();


    // createNFT

    router.post("/createNFT", async (req, res) => {
       
        var Id = req.body.Id
        var Id1 = req.body.Id1
        var Id2 = req.body.Id2
        var Id3 = req.body.Id3
        var Id4 = req.body.Id4
        var Id5 = req.body.Id5

        const result = (await myContract3.methods.createNFT(Id,Id1,Id2,Id3,Id4,Id5).send( {
            from :addresses[0],
            gas:1000000
        }));

        res.send(result);

    });

    // balance Of

    router.get("/getbalance/:Id", async (req, res) => {
        var Id = req.params.Id
        res.send(await myContract.methods.balanceOf(Id).call())

    });

    // symbol

    router.get("/getsymbol/:Id", async (req, res) => {
        var Id = req.params.Id
        res.send(await myContract3.methods.symbol(Id).call())

    });

    // name
    
    router.get("/getname/:Id", async (req, res) => {
        var Id = req.params.Id
        res.send(await myContract.methods.name(Id).call())

    });

    // mint tokens

    router.post("/mintItem", async (req, res) => {
        var Id = req.body.Id
        var Id1 = req.body.Id1

        res.send(await myContract.methods.mintItem(Id,Id1).send( {
            from :addresses[0],
            gas:1000000
        }))

    });

    // transfer tokens

    router.post("/transfer/:Id", async (req, res) => {
        var Id = req.params.Id
        res.send(await myContract3.methods.transfer(Id).send())

    });

    
    // transfer from

    router.post("/transferFrom/:Id", async (req, res) => {
        var Id = req.params.Id
        res.send(await myContract3.methods.transferFrom(Id).send())

    });

    // approve 

    router.post("/approve/:Id", async (req, res) => {
        var Id = req.params.Id
        res.send(await myContract.methods.approve(Id).send())

    });

    // get token by ID

    router.get("/gettokenById/:Id", async (req, res) => {
        
        var Id = req.params.Id
        res.send(await myContract.methods.getTokenByID(Id).call())

    });

    // Buy NFT

    router.post("/BuyNFT/:Id", async (req, res) => {
        
        var Id = req.params.Id
        var Id1 = req.params.Id1
        
        res.send(await myContract.methods.buyNFT(Id,Id1).send())

    });

    // sell Nft    

    router.post("/sellNFT/:Id", async (req, res) => {
        
        var Id = req.params.Id
        var Id1 = req.params.Id1
        var Id2 = req.params.Id2
        var Id3 = req.params.Id3

        res.send(await myContract2.methods.sellNFT(Id,Id1,Id2,Id3).send())

    });

    // Burn NFT

    router.post("/BurnNFT/:Id", async (req, res) => {
        var Id = req.params.Id
        res.send(await myContract.methods.BurnNFT(Id).send())

    });

    }

}

init();

module.exports = router;

