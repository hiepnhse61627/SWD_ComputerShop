package com.service;

import com.dto.ProductDTO;
import com.entity.Product;
import com.parser.ProductParser;
import com.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public class ProductService implements IProductService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ProductParser productParser;

    @Override
    public ProductDTO createProDuct(ProductDTO dto) {
        Product entity = productParser.parseToEntity(dto);
        Product saved = productRepository.save(entity);

        return productParser.parseToDTO(saved);
    }

    @Override
    public ProductDTO updateProduct(ProductDTO dto) {
        Product entity = productParser.parseToEntity(dto);
        Product saved = productRepository.save(entity);

        return productParser.parseToDTO(saved);
    }

    @Override
    public void removeProduct(Integer id) {
        productRepository.delete(id);
    }

    @Override
    public List<ProductDTO> getListProduct() {
        return productParser.parseToListDTO(productRepository.findAll());
    }

    @Override
    public ProductDTO findProductById(Integer id) {
        return productParser.parseToDTO(productRepository.findOne(id));
    }
}
