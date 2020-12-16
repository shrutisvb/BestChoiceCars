package com.Cars.BestChoiceCars.Model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

public interface CarsRepository extends JpaRepository <Cars, String> {
	@Query("from Cars where brand=?1")
    List<Cars> findByBrand(String brand); 
	@Query("from Cars where price < 500000")
    List<Cars> findByprice(String price); 
	@Query("from Cars where price > 500000")
	List<Cars> findByPriceGreaterThan(String price);


}
