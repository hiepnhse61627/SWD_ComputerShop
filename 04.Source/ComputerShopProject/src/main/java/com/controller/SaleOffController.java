package com.controller;

import com.dto.SaleoffDTO;
import com.service.saleoff.ISaleoffService;
import com.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * Created by MinhQuy on 3/20/2017.
 */
@RestController
public class SaleOffController {
    @Autowired
    ISaleoffService saleoffService;

    @RequestMapping(value = "/saleOff", method = RequestMethod.GET)
    public Map<String, Object> getAllSaleOff() {
        return ResponseUtil.responseObject(saleoffService.getListSaleoff());
    }

    @RequestMapping(value = "/saleOff", method = RequestMethod.POST)
    public Map<String, Object> createNewSaleOff(SaleoffDTO saleoffDTO) {
        return ResponseUtil.responseObject(saleoffService.createSaleoff(saleoffDTO));
    }

    @RequestMapping(value = "/saleOff", method = RequestMethod.PUT)
    public Map<String, Object> updateSaleOff(SaleoffDTO saleoffDTO) {
        return ResponseUtil.responseObject(saleoffService.updateSaleoff(saleoffDTO));
    }

    @RequestMapping(value = "/saleOff", method = RequestMethod.DELETE)
    public Map<String, Object> removeSaleOff(@RequestParam("saleOffCd") String saleOffCd) {
        return ResponseUtil.responseObject(saleoffService.removeSaleoff(saleOffCd));
    }

    @RequestMapping(value = "/saleOff/getByCode", method = RequestMethod.GET)
    public Map<String, Object> getSaleOffBySaleOffCode(@RequestParam("saleOffCd") String saleOffCd) {
        return ResponseUtil.responseObject(saleoffService.findSaleOffBySaleOffCd(saleOffCd));
    }
}
