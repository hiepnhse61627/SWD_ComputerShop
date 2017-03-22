package com.controller;

import com.dto.OrderDetailDTO;
import com.dto.ShippingInfoDTO;
import com.service.order.IOrderService;
import com.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.Map;

/**
 * Created by MinhQuy on 3/22/2017.
 */
@RestController
public class OrderController {
    @Autowired
    IOrderService orderService;

    @RequestMapping(value = "/order-addToCart", method = RequestMethod.POST)
    public Map<String, Object> addToCart(@RequestParam("userCd") String userCd, OrderDetailDTO orderDetailDTO) {
        return ResponseUtil.responseObject(orderService.addToCart(userCd, orderDetailDTO));
    }

    @RequestMapping(value = "/order-upateQuantity", method = RequestMethod.POST)
    public Map<String, Object> updateQuantity(OrderDetailDTO orderDetailDTO) {
        return ResponseUtil.responseObject(orderService.updateProductQuantity(orderDetailDTO));
    }

    @RequestMapping(value = "/order-removeCartItem", method = RequestMethod.POST)
    public Map<String, Object> removeCartItem(OrderDetailDTO orderDetailDTO) {
        orderService.removeCartItem(orderDetailDTO);
        return ResponseUtil.responseObject("Remove success");
    }

    @RequestMapping(value = "/order-statictis", method = RequestMethod.GET)
    public Map<String, Object> getByStatusAndDateFromDateTo(@RequestParam("status") String status,
                                                            @RequestParam("dateFrom") Date dateFrom,
                                                            @RequestParam("dateTo") Date dateTo) {
        return ResponseUtil.responseObject(orderService.getOrderByStatusAndFromDateToDate(status, dateFrom, dateTo));
    }

    @RequestMapping(value = "/order-checkOut", method = RequestMethod.POST)
    public Map<String, Object> checkOut(ShippingInfoDTO shippingInfoDTO) {
        return ResponseUtil.responseObject(orderService.checkOut(shippingInfoDTO));
    }


}
