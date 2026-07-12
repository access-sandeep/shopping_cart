package my.custom.learning.weblearn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import my.custom.learning.weblearn.entity.Post;

public interface PostRepository extends JpaRepository<Post, Integer> {

}
