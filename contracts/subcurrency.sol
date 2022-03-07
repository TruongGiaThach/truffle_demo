// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Coin {
    address public minter;
    mapping(address => uint256) public balances;

    event Sent(address from, address to, uint256 amount);
    error insufficientBalance(uint requested, uint available);

    // constructor only called when deploy contract
    constructor() {
        minter = msg.sender;
    }

    // make a new coins and send them to an address
    // only the owner can send these coins
    function mint(address receiver, uint256 amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount;
    }

    function send(address receiver, uint256 amount) public {
        if (amount > balances[msg.sender]) 
            revert insufficientBalance({
                requested: amount,
                available: balances[msg.sender]
            });
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
    }

    function getBalance(address addr) public view returns(uint) {
        return balances[addr];
    }

}
