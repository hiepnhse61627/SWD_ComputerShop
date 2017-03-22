package com.repository;

import com.entity.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by MinhQuy on 3/21/2017.
 */
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {
    @Query(value = "SELECT od FROM OrderDetail od WHERE od.orderId = :orderId")
    List<OrderDetail> getOrderDetailByOrderId(@Param("orderId") Integer orderId);
}
