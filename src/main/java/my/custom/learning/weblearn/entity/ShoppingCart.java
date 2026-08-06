package my.custom.learning.weblearn.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.validation.constraints.NotNull;

@Entity(name = "shopping_cart")
public class ShoppingCart {

	public interface Create {
	}

	public interface Update {
	}

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "shopping_cart_seq")
	@SequenceGenerator(name = "shopping_cart_seq", sequenceName = "shopping_cart_seq", initialValue = 1, allocationSize = 1)
	private Long cart_id;

	@NotNull(groups = Create.class, message = "No associated cart user mentioned")
	private Long user_id;

	private LocalDateTime created_at;

	public ShoppingCart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ShoppingCart(Long cart_id,
			@NotNull(groups = Create.class, message = "No associated cart user mentioned") Long user_id) {
		super();
		this.cart_id = cart_id;
		this.user_id = user_id;
		this.created_at = LocalDateTime.now();
	}

	public Long getCart_id() {
		return cart_id;
	}

	public void setCart_id(Long cart_id) {
		this.cart_id = cart_id;
	}

	public Long getUser_id() {
		return user_id;
	}

	public void setUser_id(Long user_id) {
		this.user_id = user_id;
	}

	public LocalDateTime getCreated_at() {
		return created_at;
	}

	public void setCreated_at() {
		this.created_at = LocalDateTime.now();
	}

	@Override
	public String toString() {
		return "ShoppingCart [cart_id=" + cart_id + ", user_id=" + user_id + ", created_at=" + created_at + "]";
	}
}
