package com.repository;

import com.entity.Cart;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by hiepnhse61627 on 10/03/2017.
 */
public interface CartRepository extends JpaRepository<Cart, Integer> {
}
