package my.custom.learning.weblearn.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.validation.constraints.NotNull;

@Entity(name = "products")
public class Products {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "products_seq")
	@SequenceGenerator(name = "products_seq", sequenceName = "products_seq", initialValue = 10000, allocationSize = 1)
	private Long product_id;
	
	@NotNull(message = "The product name cannot be null.")
	private String product_name;
	
	@NotNull(message = "The product description cannot be null.")
	private String description;
	
	@NotNull(message = "The product SKU cannot be null.")
	private String sku;
	
	@NotNull(message = "The brand ID cannot be null.")
	private Long brand_id;
	
	@NotNull(message = "The category ID cannot be null.")
	private Long category_id;
	
	@NotNull(message = "The product price cannot be null.")
	private Double price;
	
	@NotNull(message = "The product discount price cannot be null.")
	private Double discount_price;
	
	@NotNull(message = "The product weight cannot be null.")
	private Double weight;
	
	@NotNull(message = "The product active status cannot be null.")
	private boolean is_active;
	private LocalDateTime created_at;
	private LocalDateTime updated_at;
	
	@OneToOne
	@JoinColumn(name = "brand_id", referencedColumnName = "brand_id", insertable = false, updatable = false)
	private Brand brand;
	
	@OneToOne
	@JoinColumn(name = "category_id", referencedColumnName = "category_id", insertable = false, updatable = false)
	private CategoryOfProducts category;

	public Products() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Products(Long product_id, String product_name, String description, String sku, Long brand_id,
			Long category_id, Double price, Double discount_price, Double weight, boolean is_active,
			LocalDateTime created_at, LocalDateTime updated_at) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.description = description;
		this.sku = sku;
		this.brand_id = brand_id;
		this.category_id = category_id;
		this.price = price;
		this.discount_price = discount_price;
		this.weight = weight;
		this.is_active = is_active;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}

	public Long getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

	public Long getBrand_id() {
		return brand_id;
	}

	public void setBrand_id(Long brand_id) {
		this.brand_id = brand_id;
	}

	public Long getCategory_id() {
		return category_id;
	}

	public void setCategory_id(Long category_id) {
		this.category_id = category_id;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getDiscount_price() {
		return discount_price;
	}

	public void setDiscount_price(Double discount_price) {
		this.discount_price = discount_price;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public boolean isIs_active() {
		return is_active;
	}

	public void setIs_active(boolean is_active) {
		this.is_active = is_active;
	}

	public LocalDateTime getCreated_at() {
		return created_at;
	}

	public void setCreated_at(LocalDateTime created_at) {
		this.created_at = created_at;
	}

	public LocalDateTime getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(LocalDateTime updated_at) {
		this.updated_at = updated_at;
	}

	public Brand getBrand() {
		return brand;
	}

	public CategoryOfProducts getCategory() {
		return category;
	}

	@Override
	public String toString() {
		return "Products [product_id=" + product_id + ", product_name=" + product_name + ", description=" + description
				+ ", sku=" + sku + ", brand_id=" + brand_id + ", category_id=" + category_id + ", price=" + price
				+ ", discount_price=" + discount_price + ", weight=" + weight + ", is_active=" + is_active
				+ ", created_at=" + created_at + ", updated_at=" + updated_at + "]";
	}
}
