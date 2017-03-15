package com.repository;

import com.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public interface ProductRepository extends JpaRepository<Product, Integer> {
    @Query("SELECT p FROM Product p WHERE p.cd = :productCode")
    public Product findProductByProductCode(@Param("productCode") String productCode);

    @Query("SELECT p FROM Product p WHERE p.producerCd = :producerCode")
    public List<Product> findProductByProducerCode(@Param("producerCode") String producerCode);

    @Query("SELECT p FROM Product p WHERE p.categoryCd = :categoryCode")
    public List<Product> findProductByCategoryCode(@Param("categoryCode") String categoryCode);

    @Query("SELECT p FROM Product p WHERE p.name LIKE :productName")
    public List<Product> findProductByName(@Param("productName") String productName);
}
