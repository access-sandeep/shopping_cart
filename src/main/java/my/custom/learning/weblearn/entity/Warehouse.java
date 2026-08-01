package my.custom.learning.weblearn.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.validation.constraints.NotNull;
import my.custom.learning.weblearn.entity.Products.Create;

@Entity(name = "warehouses")
public class Warehouse {
	
	public interface Create {}
    public interface Update {}

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "warehouse_seq")
	@SequenceGenerator(name = "warehouse_seq", sequenceName = "warehouse_seq", initialValue = 1, allocationSize = 1)
	private Long warehouse_id;

	@NotNull(groups = Create.class, message = "The warehouse name cannot be null.")
	private String warehouse_name;

	@NotNull(groups = Create.class, message = "The address id cannot be null.")
	@Column(name = "address_id")
	private Long warehouse_address_id;

	@OneToOne
	@JoinColumn(name = "address_id", referencedColumnName = "address_id", insertable = false, updatable = false)
	private Address address;
	
	public Warehouse(Long warehouse_id, @NotNull(message = "The warehouse name cannot be null.") String warehouse_name,
			@NotNull(message = "The address id cannot be null.") Long warehouse_address_id, Address address) {
		super();
		this.warehouse_id = warehouse_id;
		this.warehouse_name = warehouse_name;
		this.warehouse_address_id = warehouse_address_id;
		this.address = address;
	}

	public Warehouse() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getWarehouse_id() {
		return warehouse_id;
	}

	public void setWarehouse_id(Long warehouse_id) {
		this.warehouse_id = warehouse_id;
	}

	public String getWarehouse_name() {
		return warehouse_name;
	}

	public void setWarehouse_name(String warehouse_name) {
		this.warehouse_name = warehouse_name;
	}

	public Long getWarehouse_address_id() {
		return warehouse_address_id;
	}

	public void setWarehouse_address_id(Long warehouse_address_id) {
		this.warehouse_address_id = warehouse_address_id;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Warehouse [warehouse_id=" + warehouse_id + ", warehouse_name=" + warehouse_name
				+ ", warehouse_address_id=" + warehouse_address_id + ", address=" + address + "]";
	}
}
