package com.service.subcategory;

import com.dto.SubCategoryDTO;
import com.entity.SubCategory;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by MinhQuy on 3/21/2017.
 */
@Service
public interface ISubCategoryService {
    SubCategoryDTO createSubCategory(SubCategoryDTO subCategoryDTO);

    SubCategoryDTO updateSubCategory(SubCategoryDTO subCategoryDTO);

    List<SubCategoryDTO> getListSubCategory();

    List<SubCategoryDTO> getListSubCategoryByCategoryCd(String categoryCd);

    SubCategoryDTO getSubCategoryDTOByCd(String cd);

    SubCategory getSubCategoryByCd(String cd);

    String removeSubCategory(String subCategoryCd);
}
