// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CarbonCredits is ERC20Burnable, ReentrancyGuard, Ownable {
    uint256 public pricePerCredit;  // Price per carbon credit in wei

    // Struct for holding order details
    struct Order {
        address user;
        uint256 amount;
        bool isBuyOrder;  // true for buy order, false for sell order
        uint256 price;    // price per credit at the time of order
    }

    Order[] public orders;  // Array to store orders

    // Event declarations
    event OrderPlaced(uint256 indexed orderId, address indexed user, bool isBuyOrder, uint256 amount, uint256 price);
    event OrderFulfilled(uint256 indexed orderId, address indexed fulfiller);

    // Constructor to set initial supply and token details
    constructor() ERC20("Arbitrum Carbon Credit", "ACC") Ownable(msg.sender) {
        _mint(msg.sender, 1000 * (10 ** decimals()));
        pricePerCredit = 100* (10 ** 18);
    }

    // Function to buy credits, overridden to include minting
    function buyCredits(uint256 amount) public payable {
        uint256 totalCost = pricePerCredit * amount;
        require(msg.value == totalCost, "Incorrect ETH amount");
        _mint(msg.sender, amount);
        emit Transfer(address(0), msg.sender, amount);
    }

    // Function to place a buy or sell order
    function placeOrder(uint256 amount, bool isBuyOrder) public payable {
        uint256 orderId = orders.length;
        uint256 currentPrice = isBuyOrder ? pricePerCredit : pricePerCredit;  // Simplified for demo; could be dynamic

        if (isBuyOrder) {
            require(msg.value == amount * currentPrice, "Incorrect value sent");
        } else {
            _burn(msg.sender, amount);
        }

        orders.push(Order({
            user: msg.sender,
            amount: amount,
            isBuyOrder: isBuyOrder,
            price: currentPrice
        }));

        emit OrderPlaced(orderId, msg.sender, isBuyOrder, amount, currentPrice);
    }

    // Function to fulfill orders
    function fulfillOrder(uint256 orderId) public nonReentrant {
        Order storage order = orders[orderId];
        require(order.amount > 0, "Order already fulfilled");

        if (order.isBuyOrder) {
            require(msg.sender != order.user, "Order creator cannot fulfill their own buy order");
            transferFrom(msg.sender, order.user, order.amount);
        } else {
            _mint(msg.sender, order.amount);
        }

        order.amount = 0;  // Mark as fulfilled
        emit OrderFulfilled(orderId, msg.sender);
    }

    // Administrative functions to adjust the price
    function setPricePerCredit(uint256 newPrice) public onlyOwner {
        pricePerCredit = newPrice;
    }
}
