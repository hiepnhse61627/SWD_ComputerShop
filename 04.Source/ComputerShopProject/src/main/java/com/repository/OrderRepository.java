package com.repository;

import com.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Date;
import java.util.List;

/**
 * Created by MinhQuy on 3/12/2017.
 */
public interface OrderRepository extends JpaRepository<Order, Integer> {
    @Query(value = "SELECT o FROM Order o WHERE o.status = :status AND o.modifiedOn BETWEEN :dateFrom AND :dateTo ORDER BY o.modifiedOn DESC")
    List<Order> findOrderByStatusAndDateFromDateTo(@Param("status") String status, @Param("dateFrom") Date dateFrom, @Param("dateTo") Date dateTo);

    @Query(value = "SELECT o FROM Order o WHERE o.modifiedBy = :admin")
    List<Order> findOrderByAdmin(@Param("admin") String admin);

    @Query(value = "SELECT o FROM Order o WHERE o.customerCd = :customerCd AND o.status = :status")
    List<Order> findOrderByCustomerCdAndStatus(@Param("customerCd") String customerCd, @Param("status") String status);
}
