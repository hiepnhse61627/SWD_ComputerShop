package com.service.product;

import com.dto.ProductDTO;
import com.entity.Category;
import com.entity.Producer;
import com.entity.Product;
import com.repository.ProductRepository;
import com.service.category.ICategoryService;
import com.service.producer.IProducerService;
import com.util.ProductUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by MinhQuy on 3/13/2017.
 */
@Service
public class ProductService implements IProductService {

    @Autowired
    ProductRepository productRepository;

    @Autowired
    IProducerService producerService;

    @Autowired
    ICategoryService categoryService;

    @Override
    public ProductDTO createProduct(ProductDTO productDTO) {
        checkNullInProductDTO(productDTO);
        checkDuplicateCodeAndNameWhenInsert(productDTO);
        producerService.findProducerByProducerCode(productDTO.getProducerCd());
        categoryService.findCategoryByCategoryCode(productDTO.getCategoryCd());
        Product product = ProductUtil.convertDTOToEntity(productDTO);
        Product savedProduct = productRepository.save(product);
        return ProductUtil.convertEntityToDTO(savedProduct);
    }

    @Override
    public ProductDTO updateProduct(ProductDTO productDTO) {
        checkNullInProductDTO(productDTO);
        Product product = findProductEntityByProductCode(productDTO.getProductCd());
        Producer producer = producerService.findProducerEntityByProducerCode(productDTO.getProducerCd());
        Category category = categoryService.findCategoryEntityByCategoryCode(productDTO.getCategoryCd());
        checkDuplicateNameWhenUpdate(productDTO);
        product.setProducerCd(producer.getCd());
        product.setCategoryCd(category.getCd());
        product.setName(productDTO.getProductName());
        product.setIsSaleOff(productDTO.getSaleOff());
        if (productDTO.getSaleOff()) {
            product.setSaleOffCd(productDTO.getSaleOffCd());
        }
        product.setModifiedBy(productDTO.getModifiedBy());
        product.setModifiedOn(new Date());
        product.setPrice(productDTO.getProductPrice());
        if (productDTO.getProductDescription() != null) {
            product.setDescription(productDTO.getProductDescription());
        }
        Product updateProduct = productRepository.save(product);
        return ProductUtil.convertEntityToDTO(updateProduct);
    }

    @Override
    public String removeProduct(String productCode) {
        Product product = findProductEntityByProductCode(productCode);
        productRepository.delete(product);
        return product.getCd();
    }

    @Override
    public List<ProductDTO> getListProduct() {
        List<Product> productList = productRepository.findAll();
        List<ProductDTO> productDTOList = new ArrayList<>();
        if (!productList.isEmpty()) {
            for (Product product : productList) {
                ProductDTO productDTO = ProductUtil.convertEntityToDTO(product);
                productDTOList.add(productDTO);
            }
        }
        return productDTOList;
    }

    @Override
    public List<ProductDTO> getListProductByCategoryCode(String categoryCode) {
        List<Product> productList = productRepository.findProductByCategoryCode(categoryCode);
        List<ProductDTO> productDTOList = new ArrayList<>();
        if (!productList.isEmpty()) {
            for (Product product : productList) {
                ProductDTO productDTO = ProductUtil.convertEntityToDTO(product);
                productDTOList.add(productDTO);
            }
        }
        return productDTOList;
    }

    @Override
    public List<ProductDTO> getListProductByProducerCode(String producerCode) {
        List<Product> productList = productRepository.findProductByProducerCode(producerCode);
        List<ProductDTO> productDTOList = new ArrayList<>();
        if (!productList.isEmpty()) {
            for (Product product : productList) {
                ProductDTO productDTO = ProductUtil.convertEntityToDTO(product);
                productDTOList.add(productDTO);
            }
        }
        return productDTOList;
    }

    @Override
    public List<ProductDTO> getListProductByName(String productName) {
        List<Product> productList = productRepository.findProductByName(productName);
        List<ProductDTO> productDTOList = new ArrayList<>();
        if (!productList.isEmpty()) {
            for (Product product : productList) {
                ProductDTO productDTO = ProductUtil.convertEntityToDTO(product);
                productDTOList.add(productDTO);
            }
        }
        return productDTOList;
    }

    @Override
    public ProductDTO findProductByProductCode(String productCode) {
        Product product = findProductEntityByProductCode(productCode);
        return ProductUtil.convertEntityToDTO(product);
    }

    @Override
    public Product findProductEntityByProductCode(String productCode) {
        Product product = productRepository.findProductByProductCode(productCode);
        if (product != null) {
            return product;
        } else {
            throw new EntityNotFoundException("Not found product have productCode: " + productCode);
        }
    }

    private void checkDuplicateCodeAndNameWhenInsert(ProductDTO productDTO) {
        List<Product> productList = productRepository.findAll();
        if (!productList.isEmpty()) {
            for (Product product : productList) {
                if (productDTO.getProducerCd().equalsIgnoreCase(product.getCd())) {
                    throw new IllegalArgumentException("Duplicate product code: " + productDTO.getProducerCd());
                }
                if (productDTO.getProductName().equalsIgnoreCase(product.getCd())) {
                    throw new IllegalArgumentException("Duplicate product name: " + productDTO.getProductName());
                }
            }
        }

    }

    private void checkDuplicateNameWhenUpdate(ProductDTO productDTO) {
        List<Product> productList = productRepository.findAll();
        if (!productList.isEmpty()) {
            for (Product product : productList) {
                if (productDTO.getProductName().equalsIgnoreCase(product.getName())
                        && !productDTO.getProducerCd().equalsIgnoreCase(product.getCd())) {
                    throw new IllegalArgumentException("Duplicate product name: " + productDTO.getProductName());
                }
            }
        }
    }

    private void checkNullInProductDTO(ProductDTO productDTO) {
        if (productDTO.getProductCd() == null || productDTO.getProductCd().isEmpty()) {
            throw new IllegalArgumentException("Product code must be not null");
        }
        if (productDTO.getProductName() == null || productDTO.getProductName().isEmpty()) {
            throw new IllegalArgumentException("Product name must be not null");
        }
        if (productDTO.getProducerCd() == null || productDTO.getProducerCd().isEmpty()) {
            throw new IllegalArgumentException("Producer code of product must be not null");
        }
        if (productDTO.getCategoryCd() == null || productDTO.getCategoryCd().isEmpty()) {
            throw new IllegalArgumentException("Category code of product must be not null");
        }
    }
}
