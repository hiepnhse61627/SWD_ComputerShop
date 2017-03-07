package com.parser;

import com.dto.ProductDTO;
import com.entity.Product;

import java.util.List;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public interface IProductParser {

    public Product parseToEntity(ProductDTO dto);

    public ProductDTO parseToDTO(Product entity);

    public Product updateProduct(ProductDTO dto, Integer id);

    public List<ProductDTO> parseToListDTO(List<Product> listEntity);
}
