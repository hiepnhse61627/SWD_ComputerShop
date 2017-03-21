package com.util;

import com.dto.ProductDTO;
import com.entity.Product;

import java.util.Date;

/**
 * Created by MinhQuy on 3/12/2017.
 */
public class ProductUtil {

    public static ProductDTO convertEntityToDTO(Product product) {
        ProductDTO productDTO = new ProductDTO();
        productDTO.setProductId(product.getId());
        productDTO.setProductCd(product.getCd());
        productDTO.setProductName(product.getName());
        productDTO.setSubCategoryCd(product.getSubCategoryCd());
        productDTO.setProducerCd(product.getProducerCd());
        if (product.getDescription() != null) {
            productDTO.setProductDescription(product.getDescription());
        }
        productDTO.setProductPrice(product.getPrice());
        productDTO.setSaleOff(product.getIsSaleOff());
        if (product.getIsSaleOff()) {
            productDTO.setSaleOffCd(product.getSaleOffCd());
        }
        if (product.getImageUrl() != null) {
            productDTO.setImageUrl(product.getImageUrl());
        }
        if (product.getCreatedBy() != null) {
            productDTO.setCreatedBy(product.getCreatedBy());
        }
        productDTO.setCreatedOn(product.getCreatedOn());
        if (product.getModifiedBy() != null) {
            productDTO.setModifiedBy(product.getModifiedBy());
        }
        productDTO.setModifiedOn(product.getModifiedOn());
        return productDTO;
    }

    public static Product convertDTOToEntity(ProductDTO productDTO) {
        Product product = new Product();
        product.setCd(productDTO.getProductCd());
        product.setSubCategoryCd(productDTO.getSubCategoryCd());
        product.setProducerCd(productDTO.getProducerCd());
        product.setName(productDTO.getProductName());
        product.setIsSaleOff(productDTO.getSaleOff());
        if (productDTO.getSaleOff()) {
            product.setSaleOffCd(productDTO.getSaleOffCd());
        }
        product.setPrice(productDTO.getProductPrice());
        if (productDTO.getProductDescription() != null) {
            product.setDescription(productDTO.getProductDescription());
        }
        if (productDTO.getCreatedBy() != null) {
            product.setCreatedBy(productDTO.getCreatedBy());
        }
        product.setCreatedOn(new Date());
        if (productDTO.getModifiedBy() != null) {
            product.setModifiedBy(productDTO.getModifiedBy());
        }
        product.setModifiedOn(new Date());
        return product;
    }
}
