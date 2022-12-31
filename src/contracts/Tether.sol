pragma solidity ^0.8.17;

contract Tether {
    string public name = "Tether";
    string public symbol = "USDT";
    uint256 public decimals = 18;
    uint256 public totalSupply = 1000000000000000000000000; // 1 million tokens
    address public owner;

    constructor() public {
        owner = msg.sender;
    }
    modifier onlyOwner()  {
        require(msg.sender == owner);
        _;
    }
    mapping(address => uint256) public balanceOf;

    event Transfer(address indexed from, address indexed to, uint256 value);

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

}