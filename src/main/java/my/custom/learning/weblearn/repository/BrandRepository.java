package my.custom.learning.weblearn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import my.custom.learning.weblearn.entity.Brand;

public interface BrandRepository extends JpaRepository<Brand, Long> {

	// Custom query: user password is stored in the `secret_key` property on the User entity.
//	@Query("SELECT u FROM users u WHERE u.email = :email AND u.secret_key = :password")
//	User findByEmailAndPassword(@Param("email") String email, @Param("password") String password);

}
