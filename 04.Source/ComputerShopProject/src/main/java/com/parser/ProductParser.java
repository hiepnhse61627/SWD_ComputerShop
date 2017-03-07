package com.parser;

import com.dto.ProductDTO;
import com.entity.Product;
import com.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public class ProductParser implements IProductParser {

    @Autowired
    private IProductService productService;

    /**
     * [This method convert from ProductDTO to Product]
     * @param dto
     * @return entity
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public Product parseToEntity(ProductDTO dto) {
        Product entity = new Product();

        entity.setCd(dto.getProductCd());
        entity.setCategoryCd(dto.getCategoryCd());
        entity.setProducerCd(dto.getProducerCd());
        entity.setName(dto.getProductName());
        entity.setDescription(dto.getProductDescription());
        entity.setPrice(dto.getProductPrice());
        entity.setIsSaleOff(dto.getSaleOff());
        entity.setSaleOffCd(dto.getSaleOffCd());
        entity.setCreatedOn(dto.getCreatedOn());
        entity.setCreatedBy(dto.getCreatedBy());
        entity.setModifiedOn(dto.getModifiedOn());
        entity.setModifiedBy(dto.getModifiedBy());

        return entity;
    }

    /**
     * [This method convert from Product to ProductDTO]
     * @param entity
     * @return dto
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public ProductDTO parseToDTO(Product entity) {
        ProductDTO dto = new ProductDTO();

        dto.setProductId(entity.getId());
        dto.setProductCd(entity.getCd());
        dto.setCategoryCd(entity.getCategoryCd());
        dto.setProducerCd(entity.getProducerCd());
        dto.setProductName(entity.getName());
        dto.setProductDescription(entity.getDescription());
        dto.setProductPrice(entity.getPrice());
        dto.setSaleOff(entity.getIsSaleOff());
        dto.setSaleOffCd(entity.getSaleOffCd());
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
    public Product updateProduct(ProductDTO dto, Integer id) {
        Product entity = productService.findProductById(id);

        entity.setCd(dto.getProductCd());
        entity.setCategoryCd(dto.getCategoryCd());
        entity.setProducerCd(dto.getProducerCd());
        entity.setName(dto.getProductName());
        entity.setDescription(dto.getProductDescription());
        entity.setPrice(dto.getProductPrice());
        entity.setIsSaleOff(dto.getSaleOff());
        entity.setSaleOffCd(dto.getSaleOffCd());
        entity.setModifiedOn(dto.getModifiedOn());
        entity.setModifiedBy(dto.getModifiedBy());

        return entity;
    }

    /**
     * [This method convert from List<Product> to List<ProductDTO>]
     * @param listEntity
     * @return listDTO
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public List<ProductDTO> parseToListDTO(List<Product> listEntity) {
        List<ProductDTO> listDTO = new ArrayList<>();

        if ((null != listEntity) && (!listEntity.isEmpty())) {
            for (Product entity : listEntity) {
                ProductDTO dto = parseToDTO(entity);
                listDTO.add(dto);
            }
        }

        return listDTO;
    }
}
