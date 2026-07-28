package my.custom.learning.weblearn.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.validation.constraints.NotNull;

@Entity(name = "brands")
public class Brand {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "brand_seq")
	@SequenceGenerator(name = "brand_seq", sequenceName = "brand_seq", initialValue = 2, allocationSize = 1)
	private Long brand_id;

	@NotNull(message = "The brand name cannot be null.")
	private String brand_name;

	private String description;

	public Brand() {
		super();
	}

	public Brand(Long brand_id, @NotNull(message = "The brand name cannot be null.") String brand_name,
			String description) {
		super();
		this.brand_id = brand_id;
		this.brand_name = brand_name;
		this.description = description;
	}

	public Long getBrand_id() {
		return brand_id;
	}

	public void setBrand_id(Long brand_id) {
		this.brand_id = brand_id;
	}

	public String getBrand_name() {
		return brand_name;
	}

	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Brand [brand_id=" + brand_id + ", brand_name=" + brand_name + ", description=" + description + "]";
	}
}
