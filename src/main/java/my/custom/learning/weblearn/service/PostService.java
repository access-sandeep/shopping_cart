package my.custom.learning.weblearn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import my.custom.learning.weblearn.entity.Post;
import my.custom.learning.weblearn.repository.PostRepository;

@Component
public class PostService {

//	private static List<Post> posts = new ArrayList<>();
	
	@Autowired
	private PostRepository postRepository;
	
	public List<Post> findAll() {
		return postRepository.findAll();
	}
	
	public Post findOne(int id) {
		return postRepository.findById(id).orElseThrow();
	}
}
