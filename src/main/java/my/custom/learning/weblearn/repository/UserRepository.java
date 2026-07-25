package my.custom.learning.weblearn.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import my.custom.learning.weblearn.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	// Custom query: user password is stored in the `secret_key` property on the User entity.
	@Query("SELECT u FROM users u WHERE u.email = :email AND u.secret_key = :password")
	User findByEmailAndPassword(@Param("email") String email, @Param("password") String password);

}
