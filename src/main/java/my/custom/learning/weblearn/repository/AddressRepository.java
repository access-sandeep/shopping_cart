package my.custom.learning.weblearn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import my.custom.learning.weblearn.entity.Address;

public interface AddressRepository extends JpaRepository<Address, Integer> {

}
