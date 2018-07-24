pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract GREENCHAIN is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function GREENCHAIN(address _owner)  UpgradeableToken(_owner) {
    name = "GREENCHAIN";
    symbol = "GCN";
    totalSupply = 2500000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}