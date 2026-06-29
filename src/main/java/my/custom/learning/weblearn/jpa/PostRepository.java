package my.custom.learning.weblearn.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

import my.custom.learning.weblearn.post.Post;

public interface PostRepository extends JpaRepository<Post, Integer> {

}
