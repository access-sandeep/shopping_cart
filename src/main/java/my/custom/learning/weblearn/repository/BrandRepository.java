package my.custom.learning.weblearn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import my.custom.learning.weblearn.entity.Brand;

public interface BrandRepository extends JpaRepository<Brand, Long> {

}
