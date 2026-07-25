package my.custom.learning.weblearn.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotNull;

@Entity(name = "categories")
public class Cateogry {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long category_id;

	@NotNull(message = "The brand name cannot be null.")
	private String category_name;

	private String description;

	public Cateogry() {
		super();
	}

	public Cateogry(Long category_id, @NotNull(message = "The brand name cannot be null.") String category_name,
			String description) {
		super();
		this.category_id = category_id;
		this.category_name = category_name;
		this.description = description;
	}

	public Long getCategory_id() {
		return category_id;
	}

	public void setCategory_id(Long category_id) {
		this.category_id = category_id;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Cateogry [category_id=" + category_id + ", category_name=" + category_name + ", description="
				+ description + "]";
	}
}
