package my.custom.learning.weblearn.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.validation.constraints.NotNull;

@Entity(name = "product_images")
public class ProductImage {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "product_image_seq")
	@SequenceGenerator(name = "product_image_seq", sequenceName = "product_image_seq", initialValue = 1, allocationSize = 1)
	private Long image_id;

	@NotNull(message = "The product id cannot be null.")
	private Long product_id;

	@NotNull(message = "The image URL cannot be null.")
	private String image_url;

	@NotNull(message = "The primary flag cannot be null.")
	private boolean is_primary;

	public ProductImage() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductImage(Long image_id, @NotNull(message = "The product id cannot be null.") Long product_id,
			@NotNull(message = "The image URL cannot be null.") String image_url,
			@NotNull(message = "The primary flag cannot be null.") boolean is_primary) {
		super();
		this.image_id = image_id;
		this.product_id = product_id;
		this.image_url = image_url;
		this.is_primary = is_primary;
	}

	public Long getImage_id() {
		return image_id;
	}

	public void setImage_id(Long image_id) {
		this.image_id = image_id;
	}

	public Long getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}

	public String getImage_url() {
		return image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public boolean isIs_primary() {
		return is_primary;
	}

	public void setIs_primary(boolean is_primary) {
		this.is_primary = is_primary;
	}

	@Override
	public String toString() {
		return "ProductImage [image_id=" + image_id + ", product_id=" + product_id + ", image_url=" + image_url
				+ ", is_primary=" + is_primary + "]";
	}
}
