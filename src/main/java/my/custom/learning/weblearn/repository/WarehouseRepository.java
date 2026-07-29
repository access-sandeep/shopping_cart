package my.custom.learning.weblearn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import my.custom.learning.weblearn.entity.Warehouse;

public interface WarehouseRepository extends JpaRepository<Warehouse, Long> {

}
