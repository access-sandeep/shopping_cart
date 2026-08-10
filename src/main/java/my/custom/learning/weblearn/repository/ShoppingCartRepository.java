package my.custom.learning.weblearn.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import my.custom.learning.weblearn.entity.ShoppingCart;

public interface ShoppingCartRepository extends JpaRepository<ShoppingCart, Long> {

	@Query("select s from shopping_cart s where s.user_id = :userId")
	java.util.Optional<ShoppingCart> findByUserId(@Param("userId") Long userId);

}
