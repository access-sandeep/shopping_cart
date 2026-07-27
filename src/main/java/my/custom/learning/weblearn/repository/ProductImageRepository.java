package my.custom.learning.weblearn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import my.custom.learning.weblearn.entity.ProductImage;

public interface ProductImageRepository extends JpaRepository<ProductImage, Long> {

}
