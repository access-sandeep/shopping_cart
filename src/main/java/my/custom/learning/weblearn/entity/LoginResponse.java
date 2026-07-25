package my.custom.learning.weblearn.entity;

public class LoginResponse {
	private String token;

	public LoginResponse() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LoginResponse(String token) {
		super();
		this.token = token;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	@Override
	public String toString() {
		return "LoginResponse [token=" + token + "]";
	}
}
