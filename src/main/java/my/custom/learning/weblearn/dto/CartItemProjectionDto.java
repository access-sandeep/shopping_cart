package my.custom.learning.weblearn.dto;

public class CartItemProjectionDto {
    private Long cartItemId;
    private Integer quantity;

	public CartItemProjectionDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CartItemProjectionDto(Long cartItemId, Integer quantity) {
		super();
		this.cartItemId = cartItemId;
		this.quantity = quantity;
	}

	public Long getCartItemId() {
		return cartItemId;
	}

	public void setCartItemId(Long cartItemId) {
		this.cartItemId = cartItemId;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "CartItemProjectionDto [cartItemId=" + cartItemId + ", quantity=" + quantity + "]";
	}
}
