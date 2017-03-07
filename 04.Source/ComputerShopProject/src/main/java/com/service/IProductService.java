package com.service;

import com.dto.ProductDTO;
import com.entity.Product;

import java.util.List;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public interface IProductService {

    public ProductDTO createProDuct(ProductDTO dto);

    public ProductDTO updateProduct(ProductDTO dto);

    public void removeProduct(Integer id);

    public List<ProductDTO> getListProduct();

    public ProductDTO findProductDTOById(Integer id);

    public Product findProductById(Integer id);
}
