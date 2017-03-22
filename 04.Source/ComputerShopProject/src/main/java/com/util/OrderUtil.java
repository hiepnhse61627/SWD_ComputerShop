package com.util;

import com.dto.OrderDTO;
import com.entity.Order;

/**
 * Created by MinhQuy on 3/12/2017.
 */
public class OrderUtil {
    //    private static final String WAITING = "waiting";
//
//    public static Order convertDTOToEntity(OrderDTO orderDTO) {
//        Order order = new Order();
//        order.setCd();
//        order.setCustomerCd(cart.getCustomerCd());
//        order.setStatus(WAITING);
//        order.setTotalPrice(cart.getTotalPrice());
//        order.setCreatedOn(new Date());
//        order.setModifiedOn(new Date());
//        return order;
//    }
//
    public static OrderDTO convertEntityToDTO(Order order) {
        OrderDTO orderDTO = new OrderDTO();
        orderDTO.setId(order.getId());
        orderDTO.setCustomerCd(order.getCustomerCd());
        orderDTO.setStatus(order.getStatus());
        orderDTO.setTotalPrice(order.getTotalPrice());
        orderDTO.setCreatedOn(order.getCreatedOn());
        orderDTO.setModifiedOn(order.getModifiedOn());
        if (order.getModifiedBy() != null) {
            orderDTO.setModifiedBy(order.getModifiedBy());
        }
        return orderDTO;
    }
}
