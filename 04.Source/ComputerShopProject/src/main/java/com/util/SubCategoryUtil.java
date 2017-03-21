package com.util;

import com.dto.SubCategoryDTO;
import com.entity.SubCategory;

import java.util.Date;

/**
 * Created by MinhQuy on 3/21/2017.
 */
public class SubCategoryUtil {
    public static SubCategoryDTO convertUtilToDTO(SubCategory subCategory) {
        SubCategoryDTO subCategoryDTO = new SubCategoryDTO();
        subCategoryDTO.setId(subCategory.getId());
        subCategoryDTO.setCd(subCategory.getCd());
        subCategoryDTO.setCategoryCd(subCategory.getCategoryCd());
        subCategoryDTO.setName(subCategory.getName());
        if (subCategory.getDescription() != null) {
            subCategoryDTO.setDescription(subCategory.getDescription());
        }
        if (subCategory.getCreatedBy() != null) {
            subCategoryDTO.setCreatedBy(subCategory.getCreatedBy());
        }
        if (subCategory.getCreatedOn() != null) {
            subCategoryDTO.setCreatedOn(subCategory.getCreatedOn());
        }
        if (subCategory.getModifiedBy() != null) {
            subCategoryDTO.setModifiedBy(subCategory.getModifiedBy());
        }
        if (subCategory.getModifiedOn() != null) {
            subCategoryDTO.setModifiedOn(subCategory.getModifiedOn());
        }
        return subCategoryDTO;
    }

    public static SubCategory convertDTOToUtil(SubCategoryDTO subCategoryDTO) {
        SubCategory subCategory = new SubCategory();
        subCategory.setCd(subCategoryDTO.getCd());
        subCategory.setCategoryCd(subCategoryDTO.getCategoryCd());
        subCategory.setName(subCategoryDTO.getName());
        if (subCategoryDTO.getDescription() != null) {
            subCategory.setDescription(subCategoryDTO.getDescription());
        }
        if (subCategoryDTO.getModifiedBy() != null) {
            subCategory.setModifiedBy(subCategoryDTO.getModifiedBy());
        }
        subCategory.setModifiedOn(new Date());
        if (subCategoryDTO.getCreatedBy() != null) {
            subCategory.setCreatedBy(subCategoryDTO.getCreatedBy());
        }
        subCategory.setCreatedOn(subCategoryDTO.getCreatedOn());
        return subCategory;
    }
}
