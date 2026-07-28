package my.custom.learning.weblearn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;
import my.custom.learning.weblearn.entity.Login;
import my.custom.learning.weblearn.entity.LoginResponse;
import my.custom.learning.weblearn.entity.User;
import my.custom.learning.weblearn.repository.UserRepository;
import my.custom.learning.weblearn.service.JwtService;
import my.custom.learning.weblearn.utility.Md5Converter;

@RestController
public class LoginController {

	@Autowired
	private UserRepository repository;

	@Autowired
	private JwtService jwtService;

	public LoginController(UserRepository repository, JwtService jwtService) {
		super();
		this.repository = repository;
		this.jwtService = jwtService;
	}

	@PostMapping(path = "/login")
	public ResponseEntity<LoginResponse> login(@Valid @RequestBody Login login) {
		User foundUser = repository.findByEmailAndPassword(login.getEmail(), Md5Converter.md5Hash(login.getPassword()));
		boolean isAuthenticated = foundUser != null;

		if (!isAuthenticated) {
			return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(new LoginResponse("Invalid email or password"));
		}

		// Generate token with user details including roles
		String token = jwtService.generateToken(foundUser);

		return ResponseEntity.ok(new LoginResponse(token));
	}
}
