package my.custom.learning.weblearn.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.PositiveOrZero;

@Entity(name = "product_inventory")
public class ProductInventory {
	
	public interface Create {}
    public interface Update {}

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "product_inventory_seq")
	@SequenceGenerator(name = "product_inventory_seq", sequenceName = "product_inventory_seq", initialValue = 1, allocationSize = 1)
	private Long inventory_id;

	@NotNull(groups = Create.class, message = "The product id cannot be null.")
	private Long product_id;

	@NotNull(groups = Create.class, message = "The warehouse id cannot be null.")
	private Long warehouse_id;

	@PositiveOrZero(groups = Create.class, message = "The quantity available must be zero or a positive number.")
	private Integer quantity_available;

	@PositiveOrZero(groups = Create.class, message = "The reorder level must be zero or a positive number.")
	private Integer reorder_level;

	@OneToOne
	@JoinColumn(name = "warehouse_id", referencedColumnName = "warehouse_id", insertable = false, updatable = false)
	private Warehouse warehouse;
	
	public ProductInventory(Long inventory_id, @NotNull(message = "The product id cannot be null.") Long product_id,
			@NotNull(message = "The warehouse id cannot be null.") Long warehouse_id,
			@PositiveOrZero(message = "The quantity available must be zero or a positive number.") Integer quantity_available,
			@PositiveOrZero(message = "The reorder level must be zero or a positive number.") Integer reorder_level,
			Warehouse warehouse) {
		super();
		this.inventory_id = inventory_id;
		this.product_id = product_id;
		this.warehouse_id = warehouse_id;
		this.quantity_available = quantity_available;
		this.reorder_level = reorder_level;
		this.warehouse = warehouse;
	}

	public ProductInventory() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getInventory_id() {
		return inventory_id;
	}

	public void setInventory_id(Long inventory_id) {
		this.inventory_id = inventory_id;
	}

	public Long getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}

	public Long getWarehouse_id() {
		return warehouse_id;
	}

	public void setWarehouse_id(Long warehouse_id) {
		this.warehouse_id = warehouse_id;
	}

	public Integer getQuantity_available() {
		return quantity_available;
	}

	public void setQuantity_available(Integer quantity_available) {
		this.quantity_available = quantity_available;
	}

	public Integer getReorder_level() {
		return reorder_level;
	}

	public void setReorder_level(Integer reorder_level) {
		this.reorder_level = reorder_level;
	}

	public Warehouse getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(Warehouse warehouse) {
		this.warehouse = warehouse;
	}

	@Override
	public String toString() {
		return "ProductInventory [inventory_id=" + inventory_id + ", product_id=" + product_id + ", warehouse_id="
				+ warehouse_id + ", quantity_available=" + quantity_available + ", reorder_level=" + reorder_level
				+ "]";
	}
}
