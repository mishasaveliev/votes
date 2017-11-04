pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Votes.sol";

contract TestVotes {

  function testItStoresItem() {
    Votes votes = Votes(DeployedAddresses.Votes());

    votes.addItem("Test");

    Assert.equal(votes.validItem("Test"), true, "It should valid for Test");
    Assert.equal(votes.validItem("Bad"), false, "It should be invalid for Bad");
  }

}
