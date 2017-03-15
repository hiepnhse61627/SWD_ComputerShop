package com.repository;

import com.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * Created by MinhQuy on 3/11/2017.
 */
public interface CategoryRepository extends JpaRepository<Category, Integer>{
    @Query("SELECT c FROM Category c WHERE c.cd = :categoryCode")
    public Category findCategoryByCode(@Param("categoryCode") String categoryCode);
}
