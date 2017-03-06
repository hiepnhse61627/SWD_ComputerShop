package com.controller;

import com.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public class ProductController {
    @Autowired
    private IProductService productService;
}
