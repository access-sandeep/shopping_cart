package my.custom.learning.weblearn.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import my.custom.learning.weblearn.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

	// Custom query: user password is stored in the `secret_key` property on the User entity.
	@Query("SELECT u FROM users u WHERE u.email = :email AND u.secret_key = :password")
	User findByEmailAndPassword(@Param("email") String email, @Param("password") String password);
	
	// Find user by email for authentication
	User findByEmail(String email);

	// Fetch user with cart (join fetch to load cart eagerly in a single query)
	@Query("select u from users u left join fetch u.cart where u.user_id = :id")
	java.util.Optional<User> findByIdWithCart(@Param("id") Long id);

	// Fetch all users with cart
	@Query("select distinct u from users u left join fetch u.cart")
	java.util.List<User> findAllWithCart();

}
