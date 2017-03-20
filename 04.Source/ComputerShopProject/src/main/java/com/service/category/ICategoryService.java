package com.service.category;

import com.dto.CategoryDTO;
import com.entity.Category;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by hiepnhse61627 on 10/03/2017.
 */
@Service
public interface ICategoryService {

    public CategoryDTO createCategory(CategoryDTO categoryDTO);

    public CategoryDTO updateCategory(CategoryDTO categoryDTO);

    public String removeCategory(String categoryCode);

    public List<CategoryDTO> getAllCategory();

    public CategoryDTO findCategoryByCategoryCode(String categoryCode);

    public Category findCategoryEntityByCategoryCode(String categoryCode);
}
