package com.dto;

import java.util.List;

/**
 * Created by MinhQuy on 3/21/2017.
 */
public class OrderAndOrderDetailDTO {
    OrderDTO order;

    List<OrderDetailDTO> orderDetailList;

    public OrderAndOrderDetailDTO() {
    }

    public OrderAndOrderDetailDTO(OrderDTO order, List<OrderDetailDTO> orderDetailList) {
        this.order = order;
        this.orderDetailList = orderDetailList;
    }

    public OrderDTO getOrder() {
        return order;
    }

    public void setOrder(OrderDTO order) {
        this.order = order;
    }

    public List<OrderDetailDTO> getOrderDetailList() {
        return orderDetailList;
    }

    public void setOrderDetailList(List<OrderDetailDTO> orderDetailList) {
        this.orderDetailList = orderDetailList;
    }
}
