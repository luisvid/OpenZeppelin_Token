pragma solidity ^0.4.24;

// import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";


// tutorial: https://truffleframework.com/tutorials/robust-smart-contracts-with-openzeppelin

// We use is to inherit from the StandardToken contract. 
// Our contract will inherit all variables and functions from the StandardToken contract. 
// Inherited functions and variables can be overwritten by redeclaring them in the new contract.

contract TutorialToken is StandardToken {

  // The name and symbol variables give our token a unique identity.
  // The decimals variable determines the degree to which this token can be subdivided. For our example 
  // we went with 2 decimal places, similar to dollars and cents.
  // The INITIAL_SUPPLY variable determines the number of tokens created when this contract is deployed. 
  // In this case, the number is arbitrary.
  string public name = "TutorialToken";
  string public symbol = "TT";
  uint8 public decimals = 2;
  uint public INITIAL_SUPPLY = 12000;

// we'll create a constructor function to set the totalSupply equal to our declared INITIAL_SUPPLY
// and give the entire supply to the deploying account's address.
  constructor() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }  

}