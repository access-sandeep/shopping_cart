package my.custom.learning.weblearn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
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

	// New endpoint: fetch user details from Authorization: Bearer <token> header
	@GetMapping(path = "/loggedin/user")
	public ResponseEntity<?> userDetails(@RequestHeader(name = "Authorization", required = false) String authorizationHeader) {
		if (authorizationHeader == null || authorizationHeader.isBlank()) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(new LoginResponse("Authorization header is required"));
		}

		// Expect header in form: "Bearer <token>"
		String prefix = "Bearer ";
		if (!authorizationHeader.startsWith(prefix)) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(new LoginResponse("Authorization header must be in the format: Bearer <token>"));
		}

		String token = authorizationHeader.substring(prefix.length()).trim();
		if (token.isBlank()) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(new LoginResponse("Token is required in the Authorization header"));
		}

		if (!jwtService.isValid(token)) {
			return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(new LoginResponse("Invalid or expired token"));
		}

		String email = jwtService.extractUsername(token);
		if (email == null || email.isBlank()) {
			return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(new LoginResponse("Unable to extract user from token"));
		}

		User user = repository.findByEmail(email);
		if (user == null) {
			return ResponseEntity.status(HttpStatus.NOT_FOUND).body(new LoginResponse("User not found"));
		}

		// Clear sensitive fields before returning (defensive)
		user.setSecret_key(null);

		return ResponseEntity.ok(user);
	}
}