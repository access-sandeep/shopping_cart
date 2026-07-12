package my.custom.learning.weblearn.controller;

import java.net.URI;
import java.util.List;

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
import my.custom.learning.weblearn.service.UserService;

@RestController
public class UserController {

	@Autowired
	private UserService userService;
	
	public UserController(UserService userService) {
		super();
		this.userService = userService;
	}
//
//	@GetMapping(path = "/users", version=AppConstants.STATIC_API_VERSION)
//	public List<User> findAll() {
//		return userService.findAll();
//	}
//	
//	@GetMapping(path = "/user/{id}", version=AppConstants.STATIC_API_VERSION)
//	public User findById(@PathVariable int id) {
//		User user = userService.findOne(id);
//		if(user==null) {
//			throw new UserNotFoundException("No user found with the id = "+id, "Line number 30");
//		}
//		return user;
//	}
//	
//	@PostMapping(path = "/user/add", version=AppConstants.STATIC_API_VERSION)
//	public ResponseEntity<User> addUser(@Valid @RequestBody User user) {
//		User createUser = userService.create(user);
//		URI location = URI.create("/user/"+createUser.getId());
//		return ResponseEntity.created(location).build();
//	}
//	
//	@DeleteMapping(path = "/user/delete/{id}", version=AppConstants.STATIC_API_VERSION)
//	public ResponseEntity<List<User>> deleteUser(@PathVariable int id) {
//		try {
//			return ResponseEntity.ok(userService.delete(id));
//		} catch (UserNotDeletedException e) {
//			e.printStackTrace();
//		}
//		return null;
//	}
//	
//	@PatchMapping(path = "/user/update/name/{id}", version=AppConstants.STATIC_API_VERSION)
//	public ResponseEntity<User> patchUserName(@PathVariable int id, @RequestBody User user) {
//		return ResponseEntity.ok(userService.updateName(id, user));
//	}
//	
//	@PatchMapping(path = "/user/update/{id}", version=AppConstants.STATIC_API_VERSION)
//	public ResponseEntity<User> patchUser(@PathVariable int id, @RequestBody User user) {
//		return ResponseEntity.ok(userService.updateUser(id, user));
//	}
}
