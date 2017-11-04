var Votes = artifacts.require("./Votes.sol");

contract('Votes', function(accounts) {

  it("...should store the value 'test'.", function() {
    return Votes.deployed().then(function(instance) {
      VotesInstance = instance;

      return VotesInstance.addItem("test", {from: accounts[0]});
    }).then(function() {
      return VotesInstance.validItem.call("test");
    }).then(function(storedData) {
      assert.equal(storedData, true, "The value 'test' should be valid.");
    });
  });

});
