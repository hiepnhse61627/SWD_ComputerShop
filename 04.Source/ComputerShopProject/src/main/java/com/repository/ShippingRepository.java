package com.repository;

import com.entity.ShippingInfo;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by MinhQuy on 3/22/2017.
 */
public interface ShippingRepository extends JpaRepository<ShippingInfo, Integer> {
}
