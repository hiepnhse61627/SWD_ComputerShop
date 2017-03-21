package com.service.category;

import com.dto.CategoryDTO;
import com.entity.Category;
import com.repository.CategoryRepository;
import com.util.CategoryUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by hiepnhse61627 on 10/03/2017.
 */
@Service
public class CategoryService implements ICategoryService {

    @Autowired
    CategoryRepository categoryRepository;

    @Override
    public CategoryDTO createCategory(CategoryDTO categoryDTO) {
        checkNullInCategoryDTO(categoryDTO);
        checkForDuplicateNameAndCodeWhenInsert(categoryDTO);
        Category category = CategoryUtil.convertDTOToEntity(categoryDTO);
        Category savedCategory = categoryRepository.save(category);
        return CategoryUtil.convertEntityToDTO(savedCategory);
    }

    @Override
    public CategoryDTO updateCategory(CategoryDTO categoryDTO) {
        checkForDuplicateNameWhenUpdate(categoryDTO);
        Category category = findCategoryByCategoryCode(categoryDTO.getCd());
        if (categoryDTO.getName() != null) {
            category.setName(categoryDTO.getName());
        }
        if (categoryDTO.getDescription() != null) {
            category.setDescription(categoryDTO.getDescription());
        }
        category.setModifiedBy(categoryDTO.getModifiedBy());
        category.setModifiedOn(new Date());
        Category updateCategory = categoryRepository.save(category);
        return CategoryUtil.convertEntityToDTO(updateCategory);
    }

    @Override
    public String removeCategory(String categoryCode) {
        Category category = findCategoryByCategoryCode(categoryCode);
        categoryRepository.delete(category);
        return categoryCode;
    }

    @Override
    public List<CategoryDTO> getAllCategory() {
        List<Category> categoryList = categoryRepository.findAll();
        List<CategoryDTO> categoryDTOList = new ArrayList<>();
        if (!categoryList.isEmpty()) {
            for (Category category : categoryList) {
                CategoryDTO categoryDTO = CategoryUtil.convertEntityToDTO(category);
                categoryDTOList.add(categoryDTO);
            }
        }
        return categoryDTOList;
    }

    @Override
    public Category findCategoryByCategoryCode(String categoryCode) {
        Category category = categoryRepository.findCategoryByCode(categoryCode);
        if (category != null) {
            return category;
        } else {
            throw new EntityNotFoundException("Not found category have categoryCode: " + categoryCode);
        }
    }

    @Override
    public CategoryDTO findCategoryDTOByCategoryCode(String categoryCode) {
        Category category = categoryRepository.findCategoryByCode(categoryCode);
        if (category != null) {
            return CategoryUtil.convertEntityToDTO(category);
        } else {
            throw new EntityNotFoundException("Not found category have categoryCode: " + categoryCode);
        }
    }

    private void checkForDuplicateNameAndCodeWhenInsert(CategoryDTO categoryDTO) {
        List<Category> categoryList = categoryRepository.findAll();
        if (!categoryList.isEmpty()) {
            for (Category category : categoryList) {
                if (categoryDTO.getName().equalsIgnoreCase(category.getName())) {
                    throw new IllegalArgumentException("Duplicate category name: " + categoryDTO.getName());
                }
                if (categoryDTO.getCd().equalsIgnoreCase(category.getCd())) {
                    throw new IllegalArgumentException("Duplicate category code: " + categoryDTO.getCd());
                }
            }
        }
    }

    private void checkForDuplicateNameWhenUpdate(CategoryDTO categoryDTO) {
        List<Category> categoryList = categoryRepository.findAll();
        if (!categoryList.isEmpty()) {
            for (Category category : categoryList) {
                if ((categoryDTO.getName().equalsIgnoreCase(category.getName())) &&
                        !(categoryDTO.getCd().equalsIgnoreCase(category.getCd()))) {
                    throw new IllegalArgumentException("Duplicate category name: " + categoryDTO.getName());
                }
            }
        }
    }

    private CategoryDTO checkNullInCategoryDTO(CategoryDTO categoryDTO) {
        if (categoryDTO.getCd() == null || categoryDTO.getCd().isEmpty()) {
            throw new IllegalArgumentException("Category code must be not null");
        }
        if (categoryDTO.getName() == null || categoryDTO.getName().isEmpty()) {
            throw new IllegalArgumentException("Category name must be not null");
        }
        return categoryDTO;
    }

}
