package my.custom.learning.weblearn.controller;

import java.net.URI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;
import my.custom.learning.weblearn.entity.Login;
import my.custom.learning.weblearn.entity.User;
import my.custom.learning.weblearn.repository.UserRepository;
import my.custom.learning.weblearn.utility.Md5Converter;

@RestController
public class LoginController {
	
	@Autowired
	private UserRepository repository;

	public LoginController(UserRepository repository) {
		super();
		this.repository = repository;
	}
	
	@PostMapping(path = "/login")
	public URI login(@Valid @RequestBody Login login) {
		System.out.println("Login request received for email: " + login);
		User foundUser = repository.findByEmailAndPassword(login.getEmail(), Md5Converter.md5Hash(login.getPassword()));
		URI location = URI.create("/user/"+foundUser.getUser_id());
		return location;
	}
}
