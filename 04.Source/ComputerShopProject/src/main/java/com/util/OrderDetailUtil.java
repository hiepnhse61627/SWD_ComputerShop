package com.util;

import com.dto.OrderDetailDTO;
import com.entity.OrderDetail;

/**
 * Created by MinhQuy on 3/22/2017.
 */
public class OrderDetailUtil {
    public static OrderDetailDTO convertEntityToDTO(OrderDetail orderDetail) {
        OrderDetailDTO orderDetailDTO = new OrderDetailDTO();
        orderDetailDTO.setId(orderDetail.getId());
        orderDetailDTO.setProductCd(orderDetail.getProductCd());
        orderDetailDTO.setOrderId(orderDetail.getOrderId());
        orderDetailDTO.setModifiedOn(orderDetail.getModifiedOn());
        orderDetailDTO.setCreatedOn(orderDetail.getCreatedOn());
        orderDetailDTO.setQuantity(orderDetail.getQuantity());
        orderDetailDTO.setTotalSaleOff(orderDetail.getTotalSaleOff());
        orderDetailDTO.setTotalPrice(orderDetail.getTotalPrice());
        return orderDetailDTO;
    }
}
