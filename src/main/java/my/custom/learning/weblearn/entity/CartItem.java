package my.custom.learning.weblearn.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;

@Entity(name = "cart_items")
public class CartItem {
	
	public interface Create {
	}
	
	public interface Update {
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "cart_item_seq")
	@SequenceGenerator(name = "cart_item_seq", sequenceName = "cart_item_seq", initialValue = 1, allocationSize = 1)
	private Long cart_item_id;
	
	@NotNull(groups = Create.class, message = "No associated cart mentioned")
	private Long cart_id;
	
	@NotNull(groups = Create.class, message = "No associated product mentioned")
	private Long product_id;
	
	@Positive(groups = Create.class, message = "Quantity must be a positive number, zero is not allowed")
	private Integer quantity;

	public CartItem() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CartItem(Long cart_item_id,
			@NotNull(groups = Create.class, message = "No associated cart mentioned") Long cart_id,
			@NotNull(groups = Create.class, message = "No associated product mentioned") Long product_id,
			@Positive(groups = Create.class, message = "Quantity must be a positive number, zero is not allowed") Integer quantity) {
		super();
		this.cart_item_id = cart_item_id;
		this.cart_id = cart_id;
		this.product_id = product_id;
		this.quantity = quantity;
	}

	public Long getCart_item_id() {
		return cart_item_id;
	}

	public void setCart_item_id(Long cart_item_id) {
		this.cart_item_id = cart_item_id;
	}

	public Long getCart_id() {
		return cart_id;
	}

	public void setCart_id(Long cart_id) {
		this.cart_id = cart_id;
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

	@Override
	public String toString() {
		return "CartItem [cart_item_id=" + cart_item_id + ", cart_id=" + cart_id + ", product_id=" + product_id
				+ ", quantity=" + quantity + "]";
	}
}
