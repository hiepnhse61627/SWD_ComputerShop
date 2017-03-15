package com.util;

import com.dto.CategoryDTO;
import com.entity.Category;

import java.util.Date;

/**
 * Created by MinhQuy on 3/11/2017.
 */
public class CategoryUtil {
    public static CategoryDTO convertEntityToDTO(Category category) {
        CategoryDTO categoryDTO = new CategoryDTO();
        categoryDTO.setId(category.getId());
        categoryDTO.setCd(category.getCd());
        categoryDTO.setName(category.getName());
        if (category.getDescription() != null) {
            categoryDTO.setDescription(category.getDescription());
        }
        if (category.getCreatedBy() != null) {
            categoryDTO.setCreatedBy(category.getCreatedBy());
        }
        if (category.getCreatedOn() != null) {
            categoryDTO.setCreatedOn(category.getCreatedOn());
        }
        if (category.getModifiedBy() != null) {
            categoryDTO.setModifiedBy(category.getModifiedBy());
        }
        if (category.getModifiedOn() != null) {
            categoryDTO.setModifiedOn(category.getModifiedOn());
        }
        return categoryDTO;
    }

    public static Category convertDTOToEntity(CategoryDTO categoryDTO) {
        Category category = new Category();
        category.setCd(categoryDTO.getCd());
        category.setName(categoryDTO.getName());
        if (categoryDTO.getDescription() != null) {
            category.setDescription(categoryDTO.getDescription());
        }
        if (categoryDTO.getCreatedBy() != null) {
            category.setCreatedBy(categoryDTO.getCreatedBy());
        }
        category.setCreatedOn(new Date());
        if (categoryDTO.getModifiedBy() != null) {
            category.setModifiedBy(categoryDTO.getModifiedBy());
        }
        category.setModifiedOn(new Date());
        return category;
    }


}
