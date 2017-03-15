package com.service.product;

import com.dto.ProductDTO;
import com.entity.Product;

import java.util.List;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public interface IProductService {

    public ProductDTO createProduct(ProductDTO productDTO);

    public ProductDTO updateProduct(ProductDTO productDTO);

    public String removeProduct(String productCode);

    public List<ProductDTO> getListProduct();

    public List<ProductDTO> getListProductByCategoryCode(String categoryCode);

    public List<ProductDTO> getListProductByProducerCode(String producerCode);

    public List<ProductDTO> getListProductByName(String productName);

    public Product findProductByProductCode(String productCode);
}
