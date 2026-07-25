package my.custom.learning.weblearn.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import my.custom.learning.weblearn.entity.Products;

public interface ProcuctsRepository extends JpaRepository<Products, Integer> {

	// Custom query: user password is stored in the `secret_key` property on the User entity.
	@Query("SELECT p FROM products p WHERE p.sku = :sku")
	Products findBySku(@Param("sku") String sku);

}
