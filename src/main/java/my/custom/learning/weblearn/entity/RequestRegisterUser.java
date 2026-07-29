package my.custom.learning.weblearn.entity;

import java.util.Set;

public class RequestRegisterUser {
	private Address address;
	private User user;
	private Set<String> roles;  // Changed from Set<Role> to Set<String> for better JSON handling

	public RequestRegisterUser() {
		super();
	}

	public RequestRegisterUser(Address address, User user, Set<String> roles) {
		super();
		this.address = address;
		this.user = user;
		this.roles = roles;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Set<String> getRoles() {
		return roles;
	}

	public void setRoles(Set<String> roles) {
		this.roles = roles;
	}

	@Override
	public String toString() {
		return "RequestRegisterUser [address=" + address + ", user=" + user + ", roles=" + roles + "]";
	}
}
