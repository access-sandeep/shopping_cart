package my.custom.learning.weblearn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import my.custom.learning.weblearn.entity.CartItem;
import my.custom.learning.weblearn.entity.Order;
import my.custom.learning.weblearn.entity.OrderItem;
import my.custom.learning.weblearn.entity.OrderStatusHistory;
import my.custom.learning.weblearn.repository.CartItemRepository;
import my.custom.learning.weblearn.repository.OrderItemRepository;
import my.custom.learning.weblearn.repository.OrderRepository;
import my.custom.learning.weblearn.repository.OrderStatusHistoryRepository;

@RestController
@RequestMapping("/orders")
public class OrderController {

	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private OrderItemRepository orderItemRepository;
	
	@Autowired
	private OrderStatusHistoryRepository orderStatusHistoryRepository;
	
	@Autowired
	private CartItemRepository cartItemRepository;

	public OrderController() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderController(OrderRepository orderRepository, OrderItemRepository orderItemRepository,
			OrderStatusHistoryRepository orderStatusHistoryRepository, CartItemRepository cartItemRepository) {
		super();
		this.orderRepository = orderRepository;
		this.orderItemRepository = orderItemRepository;
		this.orderStatusHistoryRepository = orderStatusHistoryRepository;
		this.cartItemRepository = cartItemRepository;
	}
	
	@GetMapping(path = "/all")
	public ResponseEntity<List<Order>> getAllOrders() {
		List<Order> orders = orderRepository.findAll();
		return ResponseEntity.ok(orders);
	}
	
	@PostMapping(path = "/create")
	public ResponseEntity<Order> createOrder(@RequestBody Order order) {
		Order createdOrder = orderRepository.save(order);
		return ResponseEntity.ok(createdOrder);
	}
	
	@PostMapping(path = "/save")
	public ResponseEntity<List<OrderItem>> saveOrder(@RequestBody Order order) {
		Order savedOrder = orderRepository.save(order);
		Long orderId = savedOrder.getOrder_id();
		List<CartItem> cartItems = cartItemRepository.findAllByUserId(savedOrder.getUser_id());
		List<OrderItem> savedOrderItems = saveOrderItems(cartItems, orderId);
		OrderStatusHistory savedOrderStatusHistory = saveOrderHistory(orderId, savedOrderItems);
		clearCartItems(cartItems);
		return ResponseEntity.ok(savedOrderItems);
	}
	
	private void clearCartItems(List<CartItem> cartItems) {
		cartItemRepository.deleteAll(cartItems);
	}
	
	private OrderStatusHistory saveOrderHistory(Long orderId, List<OrderItem> savedOrderItems) {
		OrderStatusHistory orderStatusHistory = new OrderStatusHistory();
		orderStatusHistory.setOrder_id(orderId);
		orderStatusHistory.setStatus("CREATED");
		orderStatusHistory.setRemarks("Order created with " + savedOrderItems.size() + " items");
		return orderStatusHistoryRepository.save(orderStatusHistory);
	}
	
	private List<OrderItem> saveOrderItems(List<CartItem> cartItems, Long orderId) {
		List<OrderItem> orderItems = cartItems.stream().map(cartItem -> {
			OrderItem orderItem = new OrderItem();
			orderItem.setOrder_id(orderId);
			orderItem.setProduct_id(cartItem.getProduct_id());
			orderItem.setQuantity(cartItem.getQuantity());
			orderItem.setUnit_price(cartItem.getProduct().getPrice());
			orderItem.setSubtotal(cartItem.getQuantity() * cartItem.getProduct().getPrice());
			return orderItem;
		}).toList();
		
		List<OrderItem> savedOrderItems = orderItemRepository.saveAll(orderItems);
		return savedOrderItems;
	}

	@Override
	public String toString() {
		return "OrderController [orderRepository=" + orderRepository + "]";
	}
	
	
}
