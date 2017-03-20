package com.controller;

import com.dto.CategoryDTO;
import com.service.category.CategoryService;
import com.service.category.ICategoryService;
import com.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by MinhQuy on 3/15/2017.
 */
@RestController
public class CategoryController {
    @Autowired
    ICategoryService categoryService;

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/category", method = RequestMethod.GET)
    public Map<String, Object> getAllCategory() {
        return ResponseUtil.responseObject(categoryService.getAllCategory());
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/category", method = RequestMethod.POST)
    public Map<String, Object> createCategory(CategoryDTO category) {
        return ResponseUtil.responseObject(categoryService.createCategory(category));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/category", method = RequestMethod.PUT)
    public Map<String, Object> updateCategory(CategoryDTO category) {
        return ResponseUtil.responseObject(categoryService.updateCategory(category));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/category", method = RequestMethod.DELETE)
    public Map<String, Object> deleteCategory(@RequestParam("categoryCode") String categoryCode) {
        return ResponseUtil.responseObject(categoryService.removeCategory(categoryCode));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/category/getByCode", method = RequestMethod.GET)
    public Map<String, Object> getCategoryByCode(@RequestParam("categoryCode") String categoryCode) {
        return ResponseUtil.responseObject(categoryService.findCategoryByCategoryCode(categoryCode));
    }

}
