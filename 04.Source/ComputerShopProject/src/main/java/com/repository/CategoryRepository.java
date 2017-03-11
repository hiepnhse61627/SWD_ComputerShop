package com.repository;

import com.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by hiepnhse61627 on 10/03/2017.
 */
public interface CategoryRepository extends JpaRepository<Category, Integer> {
}
