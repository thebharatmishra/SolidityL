
// SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

// import {AggregatorV3Interface} from "AggregatorV3Interface.sol";
// Instead of importing from a file we will import from npm or github repo
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

// Get funds from users
// Withdraw funds 
// Set minimum funding value in USD


contract FundMe{
uint256 public myValue = 1;
uint256 public minimumUSD = 5* 1e18; // But how will smartcontract get the exact value of USD. They are unable to connect with external systems.
// The smart contract connectivity problem.
// Oracles are the solution. Chainlink is leading in this cause.
// A network of validators checking the correct price of the currency.
// Verifiable Randomness is needed.
    function fund()public payable {
// Allow Users to send $
// Have a minimum $ sent
myValue =myValue+2;
    require(getConversionRate(msg.value) > minimumUSD, "didn't send enough"); // 1 ETH = 1e18 = 1000000000000000000 = 1 * 10^18 
    
    // What is revert?
// Undo any actions that have been done and send back the remaining gas back.

    }

    function getPrice()public view returns(uint256){
// Address: 0x694AA1769357215DE4FAC081bf1f309aDC325306
// ABI: 
AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
// (uint80 roundId, int256 price, uint256 startedAt,uint256 timestamp, uint80 answeredInRound)=priceFeed.latestRoundData();
(, int256 price,,,)=priceFeed.latestRoundData();
// Price of ETH in terms of USD: 200000000
return uint256(price*1e10);
    }

function getVersion() public view returns(uint256){
    return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();

}
    function getConversionRate(uint256 ethAmount)public view returns(uint256){
// 1 ETH?
// 2000_00000000000000000
uint256 ethPrice = getPrice();
// (2000_00000000000000000 * 1_000000000000000000)/1e18;
// $2000 = 1 ETH
uint256 ethAmountInUsd = (ethPrice*ethAmount)/1e18;
return ethAmountInUsd;
    }

    function withdraw()public{

    }

}