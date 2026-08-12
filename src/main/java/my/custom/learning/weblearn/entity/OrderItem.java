package my.custom.learning.weblearn.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;

@Entity(name = "order_items")
public class OrderItem {
	public interface Create {
	}

	public interface Update {
	}

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "order_item_seq")
	@SequenceGenerator(name = "order_item_seq", sequenceName = "order_item_seq", initialValue = 1, allocationSize = 1)
	private Long order_item_id;

	@NotNull(groups = Create.class, message = "No associated cart mentioned")
	private Long order_id;

	@NotNull(groups = Create.class, message = "No associated product mentioned")
	private Long product_id;

	@Positive(groups = Create.class, message = "Quantity must be a positive number, zero is not allowed")
	private Integer quantity;

	@Positive(groups = Create.class, message = "Unit price must be a positive number, zero is not allowed")
	private Double unit_price;

	@Positive(groups = Create.class, message = "subtotal must be a positive number, zero is not possible")
	private Double subtotal;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "product_id", referencedColumnName = "product_id", insertable = false, updatable = false)
	private Products product;

	public OrderItem(Long order_item_id,
			@NotNull(groups = Create.class, message = "No associated cart mentioned") Long order_id,
			@NotNull(groups = Create.class, message = "No associated product mentioned") Long product_id,
			@Positive(groups = Create.class, message = "Quantity must be a positive number, zero is not allowed") Integer quantity,
			@Positive(groups = Create.class, message = "Unit price must be a positive number, zero is not allowed") Double unit_price,
			@Positive(groups = Create.class, message = "subtotal must be a positive number, zero is not possible") Double subtotal,
			Products product) {
		super();
		this.order_item_id = order_item_id;
		this.order_id = order_id;
		this.product_id = product_id;
		this.quantity = quantity;
		this.unit_price = unit_price;
		this.subtotal = subtotal;
		this.product = product;
	}

	public OrderItem() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getOrder_item_id() {
		return order_item_id;
	}

	public void setOrder_item_id(Long order_item_id) {
		this.order_item_id = order_item_id;
	}

	public Long getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Long order_id) {
		this.order_id = order_id;
	}

	public Long getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Double getUnit_price() {
		return unit_price;
	}

	public void setUnit_price(Double unit_price) {
		this.unit_price = unit_price;
	}

	public Double getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(Double subtotal) {
		this.subtotal = subtotal;
	}

	public Products getProduct() {
		return product;
	}

	public void setProduct(Products product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "OrderItem [order_item_id=" + order_item_id + ", order_id=" + order_id + ", product_id=" + product_id
				+ ", quantity=" + quantity + ", unit_price=" + unit_price + ", subtotal=" + subtotal + ", product="
				+ product + "]";
	}

}
