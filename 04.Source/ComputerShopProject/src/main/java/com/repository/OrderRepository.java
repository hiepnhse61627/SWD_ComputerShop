package com.repository;

import com.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by MinhQuy on 3/12/2017.
 */
public interface OrderRepository extends JpaRepository<Order, Integer> {
}
