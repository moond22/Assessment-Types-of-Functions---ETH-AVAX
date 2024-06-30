pragma solidity ^0.8.0;

contract MyToken {
    // Token metadata
    string public name = "MyToken";
    string public symbol = "MTK";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    // Owner of the contract
    address public owner;

    // Balances of each address
    mapping(address => uint256) public balances;

    // Events
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Mint(address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);

    // Modifier to check if the caller is the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    // Constructor to set the owner of the contract and initial supply
    constructor(uint256 initialSupply) {
        owner = msg.sender;
        mint(owner, initialSupply); // Mint the initial supply to the owner
    }

    // Mint function - only the contract owner can mint tokens
    function mint(address to, uint256 amount) public onlyOwner {
        require(to != address(0), "Mint to the zero address");
        totalSupply += amount;
        balances[to] += amount;
        emit Mint(to, amount);
        emit Transfer(address(0), to, amount);
    }

    // Burn function - any user can burn their own tokens
    function burn(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance to burn");
        totalSupply -= amount;
        balances[msg.sender] -= amount;
        emit Burn(msg.sender, amount);
        emit Transfer(msg.sender, address(0), amount);
    }

    // Transfer function - any user can transfer tokens
    function transfer(address from, address to, uint256 amount) public returns (bool) {
        require(to != address(0), "Transfer to the zero address");
        require(balances[from] >= amount, "Insufficient balance to transfer");
        require(msg.sender == from || msg.sender == owner, "Caller is not authorized to transfer from this address");

        balances[from] -= amount;
        balances[to] += amount;
        emit Transfer(from, to, amount);
        return true;
    }

    // Function to get the balance of an address
    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }
}
