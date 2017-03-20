package com.repository;

import com.entity.Saleoff;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * Created by hiepnhse61627 on 10/03/2017.
 */
public interface SaleoffRepository extends JpaRepository<Saleoff, Integer> {
    @Query(value = "SELECT s FROM Saleoff s WHERE s.cd = :saleOffCd")
    Saleoff findSaleOffBySaleOffCd(@Param("saleOffCd") String saleOffCd);

}
