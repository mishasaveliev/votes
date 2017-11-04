pragma solidity ^0.4.2;

contract Votes {
  mapping (bytes32 => uint8) public votesReceived;

  bytes32[] public itemList;

  function Voting() {
  }

  function addItem(bytes32 item){
    itemList.push(item);
  }

  function totalVotesFor(bytes32 item) returns (uint8) {
    require(validItem(item)==true);
    return votesReceived[item];
  }

  function validItem(bytes32 item) returns (bool) {
    for(uint8 i=0; i<itemList.length; i++){
      if (itemList[i]==item) return true;
    }
    return false;
  }

  function voteForItem(bytes32 item) {
    require(validItem(item) == true);
    votesReceived[item] += 1;
  }




}
