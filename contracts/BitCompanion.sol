// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;
pragma experimental ABIEncoderV2;
// TODO: Create smart contract for BitCompanion
//change wallet address to payable
 struct fund {
        string currency;
        address walletAddress;
        uint amount;
    }
struct card {
    string ccnumber;
    string expirary;
    string ccv;
    mapping(uint => fund) wallets;
}

contract BitCompanionWallet {
    // wallet for a bitcompanion user
    // is this best practice?
    mapping(address => fund) wallets;
    fund[] userWallets;
    function addFunds(string memory currency, address walletAdd, uint amount) public {
        fund memory newWallet;
        newWallet.currency = currency;
        newWallet.walletAddress = walletAdd;
        newWallet.amount = amount;
        userWallets.push(newWallet);
    }
    

}

contract BitCompanionCard {
    //a card for bitcompanion user
    uint numWallets = 0; 
    mapping(string => card) cards;
    constructor(string memory ccnumber, string memory expirary, string memory ccv) {
        card storage userCard = cards[ccnumber];
        userCard.ccnumber = ccnumber;
        userCard.expirary = expirary;
        userCard.ccv = ccv;
    }

    function addWallet(fund memory userWallet, string memory ccnumber) public{
        // does that work? or is it other way around
        userWallet = cards[ccnumber].wallets[numWallets++];
    }
}
