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

    @RequestMapping(value = "/category", method = RequestMethod.GET)
    public Map<String, Object> getCategory() {
        return ResponseUtil.responseObject(categoryService.getAllCategory());
    }

    @RequestMapping(value = "/category", method = RequestMethod.POST)
    public Map<String, Object> createCategory(@RequestBody CategoryDTO category) {
        return ResponseUtil.responseObject(categoryService.createCategory(category));
    }

    @RequestMapping(value = "/category", method = RequestMethod.PUT)
    public Map<String, Object> updateCategory(@RequestBody CategoryDTO category) {
        return ResponseUtil.responseObject(categoryService.updateCategory(category));
    }

    @RequestMapping(value = "/category", method = RequestMethod.DELETE)
    public Map<String, Object> deleteCategory(@RequestParam("categoryCode") String categoryCode) {
        return ResponseUtil.responseObject(categoryService.removeCategory(categoryCode));
    }

}
