package my.custom.learning.weblearn.dto;

public class OrderItemProjectionDto {
	private Long orderItemId;
	private Integer quantity;
	private Double unitPrice;
	private Double subtotal;

	public OrderItemProjectionDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderItemProjectionDto(Long orderItemId, Integer quantity, Double unitPrice, Double subtotal) {
		super();
		this.orderItemId = orderItemId;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.subtotal = subtotal;
	}

	public Long getOrderItemId() {
		return orderItemId;
	}

	public void setOrderItemId(Long orderItemId) {
		this.orderItemId = orderItemId;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Double getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(Double subtotal) {
		this.subtotal = subtotal;
	}

	@Override
	public String toString() {
		return "OrderItemProjectionDto [orderItemId=" + orderItemId + ", quantity=" + quantity + ", unitPrice="
				+ unitPrice + ", subtotal=" + subtotal + "]";
	}

}
