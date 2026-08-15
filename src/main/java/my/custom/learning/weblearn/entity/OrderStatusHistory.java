package my.custom.learning.weblearn.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.validation.constraints.NotNull;

@Entity(name = "order_status_history")
public class OrderStatusHistory {

	private interface Create {
	}

	private interface Update {
	}

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "order_status_history_seq")
	@SequenceGenerator(name = "order_status_history_seq", sequenceName = "order_status_history_seq", initialValue = 1, allocationSize = 1)
	private Long history_id;

	@NotNull(groups = Create.class, message = "Order ID cannot be null")
	private Long order_id;

	@NotNull(groups = Create.class, message = "Status cannot be null")
	private String status;

	@NotNull(groups = Create.class, message = "Changed at timestamp cannot be null")
	private LocalDateTime changed_at;

	private String remarks;

	public OrderStatusHistory() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderStatusHistory(Long history_id,
			@NotNull(groups = Create.class, message = "Order ID cannot be null") Long order_id,
			@NotNull(groups = Create.class, message = "Status cannot be null") String status,
			@NotNull(groups = Create.class, message = "Changed at timestamp cannot be null") LocalDateTime changed_at,
			String remarks) {
		super();
		this.history_id = history_id;
		this.order_id = order_id;
		this.status = status;
		this.changed_at = LocalDateTime.now();
		this.remarks = remarks;
	}

	public Long getHistory_id() {
		return history_id;
	}

	public void setHistory_id(Long history_id) {
		this.history_id = history_id;
	}

	public Long getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Long order_id) {
		this.order_id = order_id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public LocalDateTime getChanged_at() {
		return changed_at;
	}

	public void setChanged_at() {
		this.changed_at = LocalDateTime.now();
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	@Override
	public String toString() {
		return "OrderStatusHistory [history_id=" + history_id + ", order_id=" + order_id + ", status=" + status
				+ ", changed_at=" + changed_at + ", remarks=" + remarks + "]";
	}

}
