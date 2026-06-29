package my.custom.learning.weblearn.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import my.custom.learning.weblearn.jpa.PostRepository;

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
	
//	public Post create(Post post) {
//		posts.add(post);
//		return post;
//	}
//	
//	public List<Post> delete(int id) throws PostNotDeletedException {
//		if(findOne(id)==null) {
//			throw new UserNotFoundException("No post with this id was found", "Line #44, UserService.java, delete() function");
//		} else {
//			if(posts.remove(id) != null) {
//				return findAll();
//			} else {
//				throw new PostNotDeletedException("The post could not be removed", "from delete service function");
//			}
//		}
//	}
//	
//	public Post updatePost(int id, Post post) throws PostNotFoundException {
//		Post updatingPost = findOne(id);
//		if(updatingPost==null) {
//			throw new UserNotFoundException("No post with this id was found", "Line #57, PostService.java, updateUser() function");
//		} else {
//			if(post.getDescription()!=null) updatingPost.setDescription(post.getDescription());
//			return updatingPost;
//		}
//	}
}
