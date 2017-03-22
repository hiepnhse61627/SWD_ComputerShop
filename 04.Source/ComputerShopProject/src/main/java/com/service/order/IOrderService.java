package com.service.order;

import com.dto.OrderAndOrderDetailDTO;
import com.dto.OrderDTO;
import com.dto.OrderDetailDTO;

import java.util.Date;
import java.util.List;

/**
 * Created by MinhQuy on 3/21/2017.
 */
public interface IOrderService {
    OrderDetailDTO addToCart(String userCd, OrderDetailDTO orderDetailDTO);

    OrderDetailDTO updateProductQuantity(OrderDetailDTO orderDetailDTO);

    void removeCartItem(OrderDetailDTO orderDetailDTO);

    List<OrderAndOrderDetailDTO> getOrderByStatusAndFromDateToDate(String status, Date dateFrom, Date dateTo);

}
