package my.custom.learning.weblearn.users;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.SequenceGenerator;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Pattern;
import my.custom.learning.weblearn.post.Post;

@Entity(name = "user_details")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_seq")
	@SequenceGenerator(name = "user_seq", sequenceName = "user_seq", initialValue = 10000, allocationSize = 1)
	private Long id;

	@OneToMany(mappedBy = "user")
	@JsonIgnore
	private List<Post> posts;

	@Pattern(regexp = "^[A-Z]{1}[a-z]+\s{1}[A-Za-z]*\s{0,1}[A-Za-z]*$", message = "The name should only contain alphabets. The first alphabet of the name must be a capital letter. Name can not have more than three parts, first, middle and last. All the parts must be seperated by a single space. ")
	private String name;

	@Email(message = "The email format is not correct. ")
	private String email;

	@JsonIgnore
	private String password;

	private LocalDateTime registrationDateTime;

	public User() {
		super();
	}

	public User(Long id, String name, String email, Optional<Boolean> isAdmin, LocalDateTime registrationDateTime) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.registrationDateTime = registrationDateTime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public LocalDateTime getRegistrationDateTime() {
		return registrationDateTime;
	}

	public void setRegistrationDateTime(LocalDateTime registrationDateTime) {
		this.registrationDateTime = registrationDateTime;
	}

	public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email + ", registrationDateTime="
				+ registrationDateTime + "]";
	}

}
