package com.service.order;

import com.dto.OrderAndOrderDetailDTO;
import com.dto.OrderDetailDTO;
import com.dto.ShippingInfoDTO;
import com.entity.ShippingInfo;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by MinhQuy on 3/21/2017.
 */
@Service
public interface IOrderService {
    OrderDetailDTO addToCart(String userCd, OrderDetailDTO orderDetailDTO);

    OrderDetailDTO updateProductQuantity(OrderDetailDTO orderDetailDTO);

    void removeCartItem(OrderDetailDTO orderDetailDTO);

    List<OrderAndOrderDetailDTO> getOrderByStatusAndFromDateToDate(String status, Date dateFrom, Date dateTo);

    List<OrderDetailDTO> getOrderDetailByOrderId(Integer orderId);

    ShippingInfoDTO checkOut(ShippingInfoDTO shippingInfoDTO);


}
