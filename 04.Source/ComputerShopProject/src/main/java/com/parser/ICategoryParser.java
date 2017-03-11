package com.parser;

import com.dto.CategoryDTO;
import com.entity.Category;

import java.util.List;

/**
 * Created by hiepnhse61627 on 11/03/2017.
 */
public interface ICategoryParser {

    public Category parseToEntity(CategoryDTO dto);

    public CategoryDTO parseToDTO(Category entity);

    public Category updateEntity(CategoryDTO dto, Integer id);

    public List<CategoryDTO> parseToListDTO(List<Category> listEntity);
}
