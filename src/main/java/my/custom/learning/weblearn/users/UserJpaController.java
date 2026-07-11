package my.custom.learning.weblearn.users;

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
import my.custom.learning.weblearn.jpa.UserRepository;
import my.custom.learning.weblearn.post.Post;

@RestController
public class UserJpaController {

	@Autowired
	private UserRepository repository;
	
	public UserJpaController(UserRepository repository) {
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
	
//	@DeleteMapping(path = "/user/delete/{id}", version=AppConstants.API_VERSION)
//	public ResponseEntity<List<User>> deleteUser(@PathVariable int id) {
//		repository.deleteById(id);
//		return ResponseEntity.ok(findAll());
//	}
//	
//	@PatchMapping(path = "/user/update/name/{id}", version=AppConstants.API_VERSION)
//	public ResponseEntity<User> patchUserName(@PathVariable int id, @Valid @RequestBody User user) {
//		Optional<User> existingUser = findById(id);
//		user.setId(existingUser.get().getId());
//		user.setEmail(existingUser.get().getEmail());
//		user.setRegistrationDateTime(existingUser.get().getRegistrationDateTime());
//		
//		if(user.getName()==null) {
//			user.setName(existingUser.get().getName());
//		}
//		
//		return ResponseEntity.ok(repository.save(user));
//	}
//	
//	@PatchMapping(path = "/user/update/{id}", version=AppConstants.API_VERSION)
//	public ResponseEntity<User> patchUser(@PathVariable int id, @Valid @RequestBody User user) {
//		Optional<User> existingUser = findById(id);
//		user.setId(existingUser.get().getId());
//
//		if(user.getEmail()==null) {
//			user.setEmail(existingUser.get().getEmail());
//		}
//		if(user.getName()==null) {
//			user.setName(existingUser.get().getName());
//		}
//		user.setRegistrationDateTime(existingUser.get().getRegistrationDateTime());
//		
//		return ResponseEntity.ok(repository.save(user));
//	}
//	
//	@GetMapping(path = "/user/{id}/posts", version = AppConstants.API_VERSION)
//	public List<Post> findAllByUser(@PathVariable int id) {
//		User user = findById(id).orElseThrow();
//		return user.getPosts();
//	}
}
