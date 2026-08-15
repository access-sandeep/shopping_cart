package my.custom.learning.weblearn.controller;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;
import com.stripe.param.PaymentIntentCreateParams;

import jakarta.validation.Valid;
import my.custom.learning.weblearn.dto.PaymentIntentRequest;
import my.custom.learning.weblearn.dto.PaymentIntentResponse;
import my.custom.learning.weblearn.entity.CartItem;
import my.custom.learning.weblearn.entity.Order;
import my.custom.learning.weblearn.entity.OrderItem;
import my.custom.learning.weblearn.entity.OrderStatusHistory;
import my.custom.learning.weblearn.entity.Payment;
import my.custom.learning.weblearn.repository.CartItemRepository;
import my.custom.learning.weblearn.repository.OrderItemRepository;
import my.custom.learning.weblearn.repository.OrderRepository;
import my.custom.learning.weblearn.repository.OrderStatusHistoryRepository;
import my.custom.learning.weblearn.repository.PaymentRepository;

@RestController
@RequestMapping("/payments")
public class PaymentController {
	@Value("${stripe.secret-key}")
	private String stripeSecretKey;

	@Autowired
	private PaymentRepository paymentRepository;

	@Autowired
	private OrderRepository orderRepository;

	@Autowired
	private OrderItemRepository orderItemRepository;

	@Autowired
	private OrderStatusHistoryRepository orderStatusHistoryRepository;

	@Autowired
	private CartItemRepository cartItemRepository;

	public PaymentController() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PaymentController(String stripeSecretKey, OrderRepository orderRepository,
			OrderItemRepository orderItemRepository, OrderStatusHistoryRepository orderStatusHistoryRepository,
			CartItemRepository cartItemRepository) {
		super();
		this.stripeSecretKey = stripeSecretKey;
		this.orderRepository = orderRepository;
		this.orderItemRepository = orderItemRepository;
		this.orderStatusHistoryRepository = orderStatusHistoryRepository;
		this.cartItemRepository = cartItemRepository;
	}

	@PostMapping("/create-intent")
	public ResponseEntity<PaymentIntentResponse> createIntent(@RequestBody @Valid PaymentIntentRequest request)
			throws StripeException {
		Stripe.apiKey = stripeSecretKey;
		PaymentIntentCreateParams params = PaymentIntentCreateParams.builder().setAmount(request.total_amount())
				.setCurrency(request.currency()).setAutomaticPaymentMethods(
						PaymentIntentCreateParams.AutomaticPaymentMethods.builder().setEnabled(true).build())
				.build();
		PaymentIntent intent = PaymentIntent.create(params);

		Order newOrder = new Order();
		newOrder.setUser_id(request.user_id());
		newOrder.setShipping_address_id(request.shipping_address_id());
		newOrder.setCoupon_id((Long) request.coupon_id());
		newOrder.setOrder_status(intent.getStatus());
		newOrder.setPayment_status("DONE using " + intent.getPaymentMethod());
		newOrder.setTotal_amount((double) request.total_amount());
		newOrder.setOrder_date();

		saveOrder(newOrder, intent);
		return ResponseEntity.ok(new PaymentIntentResponse(intent.getClientSecret()));
	}

	private List<OrderItem> saveOrder(@RequestBody Order order, PaymentIntent intent) {
		Order savedOrder = orderRepository.save(order);
		Long orderId = savedOrder.getOrder_id();
		savePayment(orderId, savedOrder.getUser_id(), intent.getPaymentMethod(), intent.getId(),
				new BigDecimal(intent.getAmount()), intent.getStatus(), LocalDateTime.now());
		List<CartItem> cartItems = cartItemRepository.findAllByUserId(savedOrder.getUser_id());
		List<OrderItem> savedOrderItems = saveOrderItems(cartItems, orderId);
		OrderStatusHistory savedOrderStatusHistory = saveOrderHistory(orderId, savedOrderItems);
		clearCartItems(cartItems);
		return savedOrderItems;
	}

	private void savePayment(Long orderId, Long user_id, String payment_method, String transaction_id,
			BigDecimal amount, String payment_status, LocalDateTime payment_date) {
		Payment payment = new Payment();
		payment.setOrder_id(orderId);
		payment.setUser_id(user_id);
		payment.setPayment_method(payment_method!=null ? payment_method : "N/A");
		payment.setTransaction_id(transaction_id);
		payment.setAmount(amount);
		payment.setPayment_status(payment_status);
		payment.setPayment_date(payment_date);
		paymentRepository.save(payment);
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
}
