package my.custom.learning.weblearn.entity;

public class RequestRegisterUser {
	private Address address;
	private User user;

	public RequestRegisterUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RequestRegisterUser(Address address, User user) {
		super();
		this.address = address;
		this.user = user;
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

	@Override
	public String toString() {
		return "RequestRegisterUser [address=" + address + ", user=" + user + "]";
	}
}
