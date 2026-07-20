package my.custom.learning.weblearn.entity;

import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;

@Entity(name = "users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_seq")
	@SequenceGenerator(name = "user_seq", sequenceName = "user_seq", initialValue = 10000, allocationSize = 1)
	private Long user_id;

	@Pattern(regexp = "^[A-Z]{1}[a-z]+$", message = "The first name should only contain alphabets. The first alphabet of the first name must be a capital letter.")
	private String first_name;

	@Pattern(regexp = "^[A-Z]{1}[a-z]+$", message = "The last name should only contain alphabets. The first alphabet of the last name must be a capital letter.")
	private String last_name;

	@Email(message = "The email format is not correct. ")
	private String email;

	@JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
	private String secret_key;

	@NotNull(message = "The phone number cannot be null.")
	private String phone;

	@NotNull(message = "The address id cannot be null.")
	@Column(name = "address_id")
	private Integer user_address_id;

	@OneToOne
	@JoinColumn(name = "address_id", referencedColumnName = "address_id", insertable = false, updatable = false)
	private Address address;

	private boolean is_active;

	private LocalDateTime created_at;

	public User() {
		super();
	}

	public User(Long user_id,
			@Pattern(regexp = "^[A-Z]{1}[a-z]+$", message = "The first name should only contain alphabets. The first alphabet of the first name must be a capital letter.") String first_name,
			@Pattern(regexp = "^[A-Z]{1}[a-z]+$", message = "The last name should only contain alphabets. The first alphabet of the last name must be a capital letter.") String last_name,
			@Email(message = "The email format is not correct. ") String email, String secret_key,
			@NotNull(message = "The phone number cannot be null.") String phone, Integer address_id, boolean is_active,
			LocalDateTime created_at) {
		super();
		this.user_id = user_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.secret_key = secret_key;
		this.phone = phone;
		this.is_active = is_active;
		this.created_at = created_at;
	}

	public Long getUser_id() {
		return user_id;
	}

	public void setUser_id(Long user_id) {
		this.user_id = user_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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
		this.created_at = created_at == null ? LocalDateTime.now() : created_at;
	}

	public String getSecret_key() {
		return secret_key;
	}

	public void setSecret_key(String secret_key) {
		this.secret_key = secret_key;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Integer getUser_address_id() {
		return user_address_id;
	}

	public void setUser_address_id(Integer user_address_id) {
		this.user_address_id = user_address_id;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", first_name=" + first_name + ", last_name=" + last_name + ", email="
				+ email + ", secret_key=" + secret_key + ", phone=" + phone + ", is_active=" + is_active
				+ ", created_at=" + created_at + "]";
	}
}
