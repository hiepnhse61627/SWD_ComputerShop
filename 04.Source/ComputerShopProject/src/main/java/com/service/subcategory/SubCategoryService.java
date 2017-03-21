package com.service.subcategory;

import com.dto.SubCategoryDTO;
import com.entity.Category;
import com.entity.SubCategory;
import com.repository.CategoryRepository;
import com.repository.SubCategoryRepository;
import com.util.SubCategoryUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by MinhQuy on 3/21/2017.
 */
@Service
public class SubCategoryService implements ISubCategoryService {
    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    SubCategoryRepository subCategoryRepository;


    @Override
    public SubCategoryDTO createSubCategory(SubCategoryDTO subCategoryDTO) {
        checkNullForSubCategoryDTO(subCategoryDTO);
        SubCategory subCategory = SubCategoryUtil.convertDTOToUtil(subCategoryDTO);
        Category category = categoryRepository.findCategoryByCode(subCategory.getCategoryCd());
        SubCategory savedSubCategory = subCategoryRepository.save(subCategory);
        return SubCategoryUtil.convertUtilToDTO(savedSubCategory);
    }

    @Override
    public SubCategoryDTO updateSubCategory(SubCategoryDTO subCategoryDTO) {
        SubCategory subCategory = subCategoryRepository.getSubCategoryByCd(subCategoryDTO.getCd());
        if (subCategoryDTO.getDescription() != null) {
            subCategory.setDescription(subCategoryDTO.getDescription());
        }
        if (subCategoryDTO.getCategoryCd() != null) {
            Category category = categoryRepository.findCategoryByCode(subCategoryDTO.getCategoryCd());
            subCategory.setCategoryCd(category.getCd());
        }
        if (subCategoryDTO.getName() != null) {
            subCategory.setName(subCategoryDTO.getName());
        }
        if (subCategoryDTO.getModifiedBy() != null) {
            subCategory.setModifiedBy(subCategoryDTO.getModifiedBy());
        }
        subCategory.setModifiedOn(new Date());
        SubCategory updatedSubCategory = subCategoryRepository.save(subCategory);
        return SubCategoryUtil.convertUtilToDTO(updatedSubCategory);
    }

    @Override
    public List<SubCategoryDTO> getListSubCategory() {
        List<SubCategory> subCategoryList = subCategoryRepository.findAll();
        List<SubCategoryDTO> subCategoryDTOList = new ArrayList<>();
        if (!subCategoryList.isEmpty()) {
            for (SubCategory subCategory : subCategoryList) {
                SubCategoryDTO subCategoryDTO = SubCategoryUtil.convertUtilToDTO(subCategory);
                subCategoryDTOList.add(subCategoryDTO);
            }
        }
        return subCategoryDTOList;
    }

    @Override
    public List<SubCategoryDTO> getListSubCategoryByCategoryCd(String categoryCd) {
        List<SubCategory> subCategoryList = subCategoryRepository.getListSubCategoryByCategoryCd(categoryCd);
        List<SubCategoryDTO> subCategoryDTOList = new ArrayList<>();
        if (!subCategoryList.isEmpty()) {
            for (SubCategory subCategory : subCategoryList) {
                SubCategoryDTO subCategoryDTO = SubCategoryUtil.convertUtilToDTO(subCategory);
                subCategoryDTOList.add(subCategoryDTO);
            }
        }
        return subCategoryDTOList;
    }

    @Override
    public SubCategoryDTO getSubCategoryDTOByCd(String subCategoryCd) {
        SubCategory subCategory = getSubCategoryByCd(subCategoryCd);
        return SubCategoryUtil.convertUtilToDTO(subCategory);
    }

    @Override
    public SubCategory getSubCategoryByCd(String subCategoryCd) {
        SubCategory subCategory = subCategoryRepository.getSubCategoryByCd(subCategoryCd);
        if (subCategory != null) {
            return subCategory;
        } else {
            throw new EntityNotFoundException("Not found sub category have cd: " + subCategoryCd);
        }
    }

    @Override
    public String removeSubCategory(String subCategoryCd) {
        SubCategory subCategory = getSubCategoryByCd(subCategoryCd);
        subCategoryRepository.delete(subCategory);
        return subCategoryCd;
    }

    private void checkNullForSubCategoryDTO(SubCategoryDTO subCategoryDTO) {
        if (subCategoryDTO.getCd() == null) {
            throw new IllegalArgumentException("Cd of sub category must be not null");
        }
        if (subCategoryDTO.getCategoryCd() == null) {
            throw new IllegalArgumentException("CategoryCd of sub category must be not null");
        }
        if (subCategoryDTO.getName() == null) {
            throw new IllegalArgumentException("Name of sub category must be not null");
        }
    }

    private void checkDuplicateWhenInputSubCategory(SubCategoryDTO subCategoryDTO) {
        List<SubCategory> subCategoryList = subCategoryRepository.findAll();
        if (!subCategoryList.isEmpty()) {
            for (SubCategory subCategory : subCategoryList) {
                if (subCategoryDTO.getCd().equalsIgnoreCase(subCategory.getCd())) {
                    throw new DuplicateKeyException("Duplicate cd of sub category: " + subCategoryDTO.getCd());
                }
                if (subCategoryDTO.getName().equalsIgnoreCase(subCategory.getName())) {
                    throw new DuplicateKeyException("Duplicate name of sub category: " + subCategoryDTO.getName());
                }
            }
        }
    }

    private void checkDuplicateWhenUpdateSubCategory(SubCategoryDTO subCategoryDTO) {
        List<SubCategory> subCategoryList = subCategoryRepository.findAll();
        if (!subCategoryList.isEmpty()) {
            for (SubCategory subCategory : subCategoryList) {
                if (subCategory.getName().equalsIgnoreCase(subCategoryDTO.getName()) &&
                        subCategory.getCd().equalsIgnoreCase(subCategoryDTO.getCd())) {
                    throw new DuplicateKeyException("Duplicate name of sub category: " + subCategoryDTO.getName());
                }
            }
        }
    }
}
