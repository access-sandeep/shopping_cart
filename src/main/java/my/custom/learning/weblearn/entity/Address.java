package my.custom.learning.weblearn.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.validation.constraints.NotNull;

@Entity(name = "addresses")
public class Address {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long address_id;

	@NotNull(message = "The address line 1 cannot be null.")
	private String address_line1;

	private String address_line2;

	@NotNull(message = "The address line 1 cannot be null.")
	private Integer city_id;

	private String state;

	private String postal_code;
	private LocalDateTime created_at;
	
	@OneToOne
	private User user;

	public Address() {
		super();
	}

	public Address(Long address_id, @NotNull(message = "The address line 1 cannot be null.") String address_line1,
			String address_line2, @NotNull(message = "The address line 1 cannot be null.") Integer city_id,
			String state, String postal_code, LocalDateTime created_at) {
		super();
		this.address_id = address_id;
		this.address_line1 = address_line1;
		this.address_line2 = address_line2;
		this.city_id = city_id;
		this.state = state;
		this.postal_code = postal_code;
		this.created_at = created_at;
	}

	public Long getAddress_id() {
		return address_id;
	}

	public void setAddress_id(Long address_id) {
		this.address_id = address_id;
	}

	public String getAddress_line1() {
		return address_line1;
	}

	public void setAddress_line1(String address_line1) {
		this.address_line1 = address_line1;
	}

	public String getAddress_line2() {
		return address_line2;
	}

	public void setAddress_line2(String address_line2) {
		this.address_line2 = address_line2;
	}

	public Integer getCity_id() {
		return city_id;
	}

	public void setCity_id(Integer city_id) {
		this.city_id = city_id;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPostal_code() {
		return postal_code;
	}

	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}

	public LocalDateTime getCreated_at() {
		return created_at;
	}

	public void setCreated_at(LocalDateTime created_at) {
		this.created_at = created_at;
	}

	@Override
	public String toString() {
		return "Address [address_id=" + address_id + ", address_line1=" + address_line1 + ", address_line2="
				+ address_line2 + ", city_id=" + city_id + ", state=" + state + ", postal_code=" + postal_code
				+ ", created_at=" + created_at + "]";
	}

}
