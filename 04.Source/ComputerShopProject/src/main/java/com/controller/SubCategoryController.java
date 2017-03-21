package com.controller;

import com.dto.SubCategoryDTO;
import com.service.subcategory.ISubCategoryService;
import com.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * Created by MinhQuy on 3/21/2017.
 */
@RestController
public class SubCategoryController {
    @Autowired
    ISubCategoryService subCategoryService;

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/subcategory", method = RequestMethod.POST)
    public Map<String, Object> createSubCategory(SubCategoryDTO subCategoryDTO) {
        return ResponseUtil.responseObject(subCategoryService.createSubCategory(subCategoryDTO));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/subcategory-update", method = RequestMethod.POST)
    public Map<String, Object> updateSubCategory(SubCategoryDTO subCategoryDTO) {
        return ResponseUtil.responseObject(subCategoryService.updateSubCategory(subCategoryDTO));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/subcategory-getAll", method = RequestMethod.GET)
    public Map<String, Object> getAllSubCategory() {
        return ResponseUtil.responseObject(subCategoryService.getListSubCategory());
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/subcategory-getByCd", method = RequestMethod.GET)
    public Map<String, Object> getSubCategoryByCd(@RequestParam("subCategoryCd") String subCategoryCd) {
        return ResponseUtil.responseObject(subCategoryService.getSubCategoryByCd(subCategoryCd));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/subcategory-getByCategoryCd", method = RequestMethod.GET)
    public Map<String, Object> getSubCategoryByCategoryCd(@RequestParam("categoryCd") String categoryCd) {
        return ResponseUtil.responseObject(subCategoryService.getListSubCategoryByCategoryCd(categoryCd));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/subcategory", method = RequestMethod.DELETE)
    public Map<String, Object> removeSubCategory(@RequestParam("subcategoryCd") String subCategoryCd) {
        return ResponseUtil.responseObject(subCategoryService.removeSubCategory(subCategoryCd));
    }
}
