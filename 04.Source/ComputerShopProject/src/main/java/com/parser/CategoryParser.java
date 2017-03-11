package com.parser;

import com.dto.CategoryDTO;
import com.entity.Category;
import com.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by hiepnhse61627 on 11/03/2017.
 */
public class CategoryParser implements ICategoryParser {

    @Autowired
    ICategoryService categoryService;

    /**
     * [This method convert from CategoryDTO to Category]
     * @param dto
     * @return entity
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public Category parseToEntity(CategoryDTO dto) {
        Category entity = new Category();

        entity.setCd(dto.getCd());
        entity.setName(dto.getName());
        entity.setDescription(dto.getDescription());
        entity.setCreatedOn(dto.getCreatedOn());
        entity.setCreatedBy(dto.getCreatedBy());
        entity.setModifiedOn(dto.getModifiedOn());
        entity.setModifiedBy(dto.getModifiedBy());

        return entity;
    }

    /**
     * [This method convert from Category to CategoryDTO]
     * @param entity
     * @return dto
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public CategoryDTO parseToDTO(Category entity) {
        CategoryDTO dto = new CategoryDTO();

        dto.setId(entity.getId());
        dto.setCd(entity.getCd());
        dto.setName(entity.getName());
        dto.setDescription(entity.getDescription());
        dto.setCreatedOn(entity.getCreatedOn());
        dto.setCreatedBy(entity.getCreatedBy());
        dto.setModifiedOn(entity.getModifiedOn());
        dto.setModifiedBy(entity.getModifiedBy());

        return dto;
    }

    /**
     * [This method call existed entity and set new data to this entity]
     * @param dto
     * @param id
     * @return entity
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public Category updateEntity(CategoryDTO dto, Integer id) {
        Category entity = categoryService.findCategoryById(id);

        entity.setCd(dto.getCd());
        entity.setName(dto.getName());
        entity.setDescription(dto.getDescription());
        entity.setModifiedOn(dto.getModifiedOn());
        entity.setModifiedBy(dto.getModifiedBy());

        return entity;
    }

    /**
     * [This method convert from List<Category> to List<CategoryDTO>]
     * @param listEntity
     * @return listDTO
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public List<CategoryDTO> parseToListDTO(List<Category> listEntity) {
        List<CategoryDTO> listDTO = new ArrayList<>();

        if ((null != listEntity) && (!listEntity.isEmpty())) {
            for (Category entity : listEntity) {
                CategoryDTO dto = parseToDTO(entity);
                listDTO.add(dto);
            }
        }

        return listDTO;
    }
}
