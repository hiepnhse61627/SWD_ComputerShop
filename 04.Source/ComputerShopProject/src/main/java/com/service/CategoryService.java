package com.service;

import com.dto.CategoryDTO;
import com.entity.Category;
import com.parser.ICategoryParser;
import com.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by hiepnhse61627 on 10/03/2017.
 */
public class CategoryService implements ICategoryService {

    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    ICategoryParser categoryParser;

    @Override
    public CategoryDTO createCategory(CategoryDTO dto) {
        Category entity = categoryParser.parseToEntity(dto);
        Category saved = categoryRepository.save(entity);

        return categoryParser.parseToDTO(saved);
    }

    @Override
    public CategoryDTO updateCategory(CategoryDTO dto) {
        Category entity = categoryParser.updateEntity(dto, dto.getId());
        Category saved = categoryRepository.save(entity);

        return categoryParser.parseToDTO(saved);
    }

    @Override
    public void removeCategory(Integer id) {
        categoryRepository.delete(id);
    }

    @Override
    public CategoryDTO findCategoryDTOById(Integer id) {
        return categoryParser.parseToDTO(categoryRepository.findOne(id));
    }

    @Override
    public Category findCategoryById(Integer id) {
        return categoryRepository.findOne(id);
    }
}
