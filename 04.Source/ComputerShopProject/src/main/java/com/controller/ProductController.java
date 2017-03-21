package com.controller;

import com.dto.ProductDTO;
import com.service.product.IProductService;
import com.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * Created by MinhQuy on 3/15/2017.
 */
@RestController
public class ProductController {
    @Autowired
    IProductService productService;

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/product", method = RequestMethod.GET)
    private Map<String, Object> getAllProduct() {
        return ResponseUtil.responseObject(productService.getListProduct());
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/product-getByCode", method = RequestMethod.GET)
    private Map<String, Object> getProductByCode(@RequestParam("productCode") String productCode) {
        return ResponseUtil.responseObject(productService.findProductByProductCode(productCode));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/product-getByName", method = RequestMethod.GET)
    private Map<String, Object> getProductByName(@RequestParam("productName") String productName) {
        return ResponseUtil.responseObject(productService.getListProductByName(productName));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/product", method = RequestMethod.POST)
    private Map<String, Object> createNewProduct(ProductDTO productDTO) {
        return ResponseUtil.responseObject(productService.createProduct(productDTO));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/product-update", method = RequestMethod.POST)
    private Map<String, Object> updateProduct(ProductDTO productDTO) {
        return ResponseUtil.responseObject(productService.updateProduct(productDTO));
    }

    @RequestMapping(value = "/product", method = RequestMethod.DELETE)
    private Map<String, Object> removeProduct(@RequestParam("productCode") String productCode) {
        return ResponseUtil.responseObject(productService.removeProduct(productCode));
    }

    @RequestMapping(value = "/product-getByProducerCode", method = RequestMethod.GET)
    private Map<String, Object> getProductByProducer(@RequestParam("producerCode") String producerCode) {
        return ResponseUtil.responseObject(productService.getListProductByProducerCode(producerCode));
    }

    @RequestMapping(value = "/product-getByCategoryCode", method = RequestMethod.GET)
    private Map<String, Object> getProductByCategory(@RequestParam("categoryCode") String categoryCode) {
        return ResponseUtil.responseObject(productService.getListProductByCategoryCode(categoryCode));
    }
}
