package com.repository;

import com.entity.SubCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by MinhQuy on 3/21/2017.
 */
public interface SubCategoryRepository extends JpaRepository<SubCategory, Integer> {
    @Query(value = "SELECT s FROM SubCategory s WHERE s.categoryCd = :categoryCd")
    List<SubCategory> getListSubCategoryByCategoryCd(@Param("categoryCd") String categoryCd);

    @Query(value = "SELECT s FROM SubCategory s WHERE s.cd = :cd")
    SubCategory getSubCategoryByCd(@Param("cd") String cd);
}
