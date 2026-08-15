package my.custom.learning.weblearn.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;

@Entity(name = "orders")
public class Order {
	public interface Create {
	}

	public interface Update {
	}

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "order_id_seq")
	@SequenceGenerator(name = "order_id_seq", sequenceName = "order_id_seq", initialValue = 1, allocationSize = 1)
	private Long order_id;

	@NotNull(groups = Create.class, message = "No associated user mentioned")
	private Long user_id;

	@NotNull(groups = Create.class, message = "No associated cart mentioned")
	private Long shipping_address_id;

	private Long coupon_id;

	@NotNull(groups = Create.class, message = "Order status cannot be null")
	private String order_status;

	@NotNull(groups = Create.class, message = "Payment status cannot be null")
	private String payment_status;

	@Positive(groups = Create.class, message = "subtotal must be a positive number, zero is not possible")
	private Double total_amount;

	@NotNull(groups = Create.class, message = "Order date cannot be null")
	private LocalDateTime order_date;

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Order(Long order_id, @NotNull(groups = Create.class, message = "No associated user mentioned") Long user_id,
			@NotNull(groups = Create.class, message = "No associated cart mentioned") Long shipping_address_id,
			Long coupon_id,
			@NotNull(groups = Create.class, message = "Order status cannot be null") String order_status,
			@NotNull(groups = Create.class, message = "Payment status cannot be null") String payment_status,
			@Positive(groups = Create.class, message = "subtotal must be a positive number, zero is not possible") Double total_amount,
			@NotNull(groups = Create.class, message = "Order date cannot be null") LocalDateTime order_date) {
		super();
		this.order_id = order_id;
		this.user_id = user_id;
		this.shipping_address_id = shipping_address_id;
		this.coupon_id = coupon_id;
		this.order_status = order_status;
		this.payment_status = payment_status;
		this.total_amount = total_amount;
		this.order_date = LocalDateTime.now();
	}

	public Long getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Long order_id) {
		this.order_id = order_id;
	}

	public Long getUser_id() {
		return user_id;
	}

	public void setUser_id(Long user_id) {
		this.user_id = user_id;
	}

	public Long getShipping_address_id() {
		return shipping_address_id;
	}

	public void setShipping_address_id(Long shipping_address_id) {
		this.shipping_address_id = shipping_address_id;
	}

	public Long getCoupon_id() {
		return coupon_id;
	}

	public void setCoupon_id(Long long1) {
		this.coupon_id = long1;
	}

	public String getOrder_status() {
		return order_status;
	}

	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}

	public String getPayment_status() {
		return payment_status;
	}

	public void setPayment_status(String payment_status) {
		this.payment_status = payment_status;
	}

	public Double getTotal_amount() {
		return total_amount;
	}

	public void setTotal_amount(Double total_amount) {
		this.total_amount = total_amount;
	}

	public LocalDateTime getOrder_date() {
		return order_date;
	}

	public void setOrder_date() {
		this.order_date = LocalDateTime.now();
	}

	@Override
	public String toString() {
		return "Order [order_id=" + order_id + ", user_id=" + user_id + ", shipping_address_id=" + shipping_address_id
				+ ", coupon_id=" + coupon_id + ", order_status=" + order_status + ", payment_status=" + payment_status
				+ ", total_amount=" + total_amount + ", order_date=" + order_date + "]";
	}

}
