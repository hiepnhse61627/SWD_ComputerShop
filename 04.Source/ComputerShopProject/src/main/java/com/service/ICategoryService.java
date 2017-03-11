package com.service;

import com.dto.CategoryDTO;
import com.entity.Category;

/**
 * Created by hiepnhse61627 on 10/03/2017.
 */
public interface ICategoryService {

    public CategoryDTO createCategory(CategoryDTO dto);

    public CategoryDTO updateCategory(CategoryDTO dto);

    public void removeCategory(Integer id);

    public CategoryDTO findCategoryDTOById(Integer id);

    public Category findCategoryById(Integer id);
}
