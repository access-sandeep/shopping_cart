package my.custom.learning.weblearn.entity;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "payments")
public class Payment {

	public interface Create {
	}

	public interface Update {
	}

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "payments_payment_id_seq_gen")
	@SequenceGenerator(name = "payments_payment_id_seq_gen", sequenceName = "payments_payment_id_seq", allocationSize = 1)
	@Column(name = "payment_id")
	private Long payment_id;

	@NotNull(groups = Create.class, message = "No associated order mentioned")
	@Column(name = "order_id", nullable = false, unique = true)
	private Long order_id;

	@NotNull(groups = Create.class, message = "No associated user mentioned")
	@Column(name = "user_id", nullable = false)
	private Long user_id;

	@NotNull(groups = Create.class, message = "Payment method cannot be null")
	@Size(max = 50, groups = { Create.class, Update.class }, message = "payment_method max length is 50")
	@Column(name = "payment_method", nullable = false, length = 50)
	private String payment_method;

	@Size(max = 100, groups = { Create.class, Update.class }, message = "transaction_id max length is 100")
	@Column(name = "transaction_id", unique = true, length = 100)
	private String transaction_id;

	@NotNull(groups = Create.class, message = "Amount cannot be null")
	@Positive(groups = Create.class, message = "amount must be a positive number")
	@Column(name = "amount", nullable = false, precision = 12, scale = 2)
	private BigDecimal amount;

	@NotNull(groups = Create.class, message = "Payment status cannot be null")
	@Size(max = 30, groups = { Create.class, Update.class }, message = "payment_status max length is 30")
	@Column(name = "payment_status", nullable = false, length = 30)
	private String payment_status;

	@Column(name = "payment_date")
	private LocalDateTime payment_date;

	public Payment() {
		super();
	}

	public Payment(Long payment_id, Long order_id, Long user_id, String payment_method, String transaction_id,
			BigDecimal amount, String payment_status, LocalDateTime payment_date) {
		super();
		this.payment_id = payment_id;
		this.order_id = order_id;
		this.user_id = user_id;
		this.payment_method = payment_method;
		this.transaction_id = transaction_id;
		this.amount = amount;
		this.payment_status = payment_status;
		this.payment_date = payment_date;
	}

	@PrePersist
	public void prePersist() {
		if (this.payment_date == null) {
			this.payment_date = LocalDateTime.now();
		}
	}

	public Long getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(Long payment_id) {
		this.payment_id = payment_id;
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

	public String getPayment_method() {
		return payment_method;
	}

	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}

	public String getTransaction_id() {
		return transaction_id;
	}

	public void setTransaction_id(String transaction_id) {
		this.transaction_id = transaction_id;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public String getPayment_status() {
		return payment_status;
	}

	public void setPayment_status(String payment_status) {
		this.payment_status = payment_status;
	}

	public LocalDateTime getPayment_date() {
		return payment_date;
	}

	public void setPayment_date(LocalDateTime payment_date) {
		this.payment_date = payment_date;
	}

	@Override
	public String toString() {
		return "Payment [payment_id=" + payment_id + ", order_id=" + order_id + ", user_id=" + user_id
				+ ", payment_method=" + payment_method + ", transaction_id=" + transaction_id + ", amount=" + amount
				+ ", payment_status=" + payment_status + ", payment_date=" + payment_date + "]";
	}
}