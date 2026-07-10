package my.custom.learning.weblearn.post;

import java.net.URI;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;
import my.custom.learning.weblearn.AppConstants;
import my.custom.learning.weblearn.jpa.PostRepository;
import my.custom.learning.weblearn.jpa.UserRepository;
import my.custom.learning.weblearn.users.User;
import my.custom.learning.weblearn.users.UserNotFoundException;
import my.custom.learning.weblearn.users.UserService;

@RestController
public class PostController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private UserRepository userRepo;

	@Autowired
	private PostService postService;
	
	@Autowired
	private PostRepository postRepo;


	public PostController(PostService postService, UserService userService, PostRepository postRepo, UserRepository userRepo) {
		super();
		this.postService = postService;
		this.userService = userService;
		this.postRepo = postRepo;
	}

	@GetMapping(path = "/posts", version = AppConstants.API_VERSION)
	public List<Post> findAll() {
		return postService.findAll();
	}

	@GetMapping(path = "/post/{id}", version = AppConstants.API_VERSION)
	public Optional<Post> findById(@PathVariable int id) {
		try {
			Post post = postService.findOne(id);
			return Optional.ofNullable(post);
		} catch(Exception e) {
			throw new PostNotFoundException("The post with id "+id +" is not found", e.getMessage());
		}
	}

	@PostMapping(path = "/user/{id}/post", version=AppConstants.API_VERSION)
	public void createPostForUser(@PathVariable int id, @Valid @RequestBody Post post) {
		User user = userRepo.findById(id).orElseThrow();

//		System.out.println(userService.findAll());
		System.out.println(user);

		
		System.out.println(post);
		
		if(user == null) {
			throw new UserNotFoundException("No user with id "+id, "trace");
			
		}
		post.setUser(user);
		postRepo.save(post);
		
	}

}
