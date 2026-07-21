package my.custom.learning.weblearn.controller;

import java.net.URI;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;
import my.custom.learning.weblearn.AppConstants;
import my.custom.learning.weblearn.entity.Post;
import my.custom.learning.weblearn.entity.User;
import my.custom.learning.weblearn.exceptions.UserNotFoundException;
import my.custom.learning.weblearn.repository.UserRepository;

@RestController
public class UserController {

	@Autowired
	private UserRepository repository;
	
	public UserController(UserRepository repository) {
		super();
		this.repository = repository;
	}

	@GetMapping(path = "/users", version=AppConstants.API_VERSION)
	public List<User> findAll() {
		return repository.findAll();
	}
	
	@GetMapping(path = "/user/{id}", version=AppConstants.API_VERSION)
	public Optional<User> findById(@PathVariable int id) {
		Optional<User> user = repository.findById(id);
		if(user.isEmpty()) {
			throw new UserNotFoundException("No user found with the user id = "+id, "Line number 30");
		}
		return user;
	}
	
	@PostMapping(path = "/user/add", version=AppConstants.API_VERSION)
	public ResponseEntity<User> addUser(@Valid @RequestBody User user) {
		LocalDateTime localDateTime = LocalDateTime.now();
		user.setCreated_at(localDateTime);
		User createUser = repository.save(user);
		URI location = URI.create("/user/"+createUser.getUser_id());
		return ResponseEntity.created(location).build();
	}
}
