package com.service.order;

import com.dto.OrderAndOrderDetailDTO;
import com.dto.OrderDTO;
import com.dto.OrderDetailDTO;
import com.dto.ShippingInfoDTO;
import com.entity.*;
import com.repository.OrderDetailRepository;
import com.repository.OrderRepository;
import com.repository.ShippingRepository;
import com.service.product.IProductService;
import com.service.saleoff.ISaleoffService;
import com.service.user.IUserService;
import com.util.OrderDetailUtil;
import com.util.OrderUtil;
import com.util.ShippingUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by MinhQuy on 3/21/2017.
 */
@Service
public class OrderService implements IOrderService {
    @Autowired
    IUserService userService;

    @Autowired
    OrderRepository orderRepository;

    @Autowired
    OrderDetailRepository orderDetailRepository;

    @Autowired
    IProductService productService;

    @Autowired
    ISaleoffService saleoffService;

    @Autowired
    ShippingRepository shippingRepository;

    @Override
    public OrderDetailDTO addToCart(String username, OrderDetailDTO orderDetailDTO) {
        userService.findUserDTOByUsername(username);
        List<Order> orderList = orderRepository.findOrderByCustomerCdAndStatus(username, "shopping");
        OrderDetail returnOrderDetail = null;
        if (!orderList.isEmpty()) {
            if (orderList.size() > 1) {
                throw new DuplicateKeyException("Have more one cart belong to user have username " + username);
            }
            // get cart from database
            Order cart = orderList.get(0);
            List<OrderDetail> orderDetailList = orderDetailRepository.getOrderDetailByOrderId(cart.getId());
            // check update or create new orderDetail
            boolean notFoundInList = true;
            if (!orderDetailList.isEmpty()) {
                for (OrderDetail orderDetail : orderDetailList) {
                    // get orderDetail about product
                    if (orderDetail.getProductCd().equalsIgnoreCase(orderDetailDTO.getProductCd())) {
                        orderDetail.setQuantity(orderDetail.getQuantity() + orderDetailDTO.getQuantity());
                        Product product = productService.findProductEntityByProductCode(orderDetail.getProductCd());
                        Saleoff saleoff = saleoffService.findSaleoffEntityBySaleOffCd(orderDetail.getProductCd());
                        orderDetail.setTotalPrice(product.getPrice() * orderDetail.getQuantity());
                        if (product.getIsSaleOff()) {
                            orderDetail.setTotalSaleOff(saleoff.getSalePercent() * orderDetail.getTotalPrice());
                        }
                        orderDetail.setModifiedOn(new Date());
                        returnOrderDetail = orderDetailRepository.save(orderDetail);
                        notFoundInList = false;
                    }
                }
            }
            // create new orderDetail for product
            if (notFoundInList) {
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setOrderId(cart.getId());
                orderDetail.setProductCd(orderDetailDTO.getProductCd());
                orderDetail.setQuantity(orderDetailDTO.getQuantity());
                orderDetail.setCreatedOn(new Date());
                orderDetail.setModifiedOn(new Date());
                Product product = productService.findProductEntityByProductCode(orderDetailDTO.getProductCd());
                orderDetail.setTotalPrice(product.getPrice() * orderDetailDTO.getQuantity());
                if (product.getIsSaleOff()) {
                    Saleoff saleoff = saleoffService.findSaleoffEntityBySaleOffCd(product.getSaleOffCd());
                    orderDetail.setTotalSaleOff(saleoff.getSalePercent() * orderDetail.getTotalPrice());
                }
                returnOrderDetail = orderDetailRepository.save(orderDetail);
            }
        }

        return OrderDetailUtil.convertEntityToDTO(returnOrderDetail);
    }

    @Override
    public OrderDetailDTO updateProductQuantity(OrderDetailDTO orderDetailDTO) {
        OrderDetail orderDetail = orderDetailRepository.findOne(orderDetailDTO.getId());
        orderDetail.setQuantity(orderDetailDTO.getQuantity());
        Product product = productService.findProductEntityByProductCode(orderDetailDTO.getProductCd());
        orderDetail.setTotalPrice(product.getPrice() * orderDetail.getQuantity());
        if (product.getIsSaleOff()) {
            Saleoff saleoff = saleoffService.findSaleoffEntityBySaleOffCd(product.getSaleOffCd());
            orderDetail.setTotalSaleOff(orderDetail.getTotalPrice() * saleoff.getSalePercent());
        }
        orderDetail.setModifiedOn(new Date());
        OrderDetail updateOrderDetail = orderDetailRepository.save(orderDetail);
        return OrderDetailUtil.convertEntityToDTO(updateOrderDetail);
    }

    @Override
    public void removeCartItem(OrderDetailDTO orderDetailDTO) {
        OrderDetail orderDetail = orderDetailRepository.findOne(orderDetailDTO.getId());
        orderDetailRepository.delete(orderDetail);
    }

    @Override
    public List<OrderAndOrderDetailDTO> getOrderByStatusAndFromDateToDate(String status, Date dateFrom, Date dateTo) {
        List<Order> orderList = orderRepository.findOrderByStatusAndDateFromDateTo(status, dateFrom, dateTo);
        List<OrderAndOrderDetailDTO> orderAndOrderDetailDTOList = new ArrayList<>();
        if (!orderList.isEmpty()) {
            for (Order order : orderList) {
                OrderAndOrderDetailDTO orderAndOrderDetailDTO = new OrderAndOrderDetailDTO();
                OrderDTO orderDTO = OrderUtil.convertEntityToDTO(order);
                orderAndOrderDetailDTO.setOrder(orderDTO);
                List<OrderDetail> orderDetailList = orderDetailRepository.getOrderDetailByOrderId(order.getId());
                List<OrderDetailDTO> orderDetailDTOList = new ArrayList<>();
                if (!orderDetailList.isEmpty()) {
                    for (OrderDetail orderDetail : orderDetailList) {
                        OrderDetailDTO orderDetailDTO = OrderDetailUtil.convertEntityToDTO(orderDetail);
                        orderDetailDTOList.add(orderDetailDTO);
                    }
                }
                orderAndOrderDetailDTO.setOrderDetailList(orderDetailDTOList);
                orderAndOrderDetailDTOList.add(orderAndOrderDetailDTO);
            }
        }
        return orderAndOrderDetailDTOList;
    }

    @Override
    public List<OrderDetailDTO> getOrderDetailByOrderId(Integer orderId) {
        List<OrderDetail> orderDetailList = orderDetailRepository.getOrderDetailByOrderId(orderId);
        List<OrderDetailDTO> orderDetailDTOList = new ArrayList<>();
        if (!orderDetailList.isEmpty()) {
            for (OrderDetail orderDetail : orderDetailList) {
                OrderDetailDTO orderDetailDTO = OrderDetailUtil.convertEntityToDTO(orderDetail);
                orderDetailDTOList.add(orderDetailDTO);
            }
        }
        return orderDetailDTOList;
    }

    @Override
    public ShippingInfoDTO checkOut(ShippingInfoDTO shippingInfoDTO) {
        Order order = orderRepository.findOne(shippingInfoDTO.getOrderId());
        order.setStatus("shipping");
        order.setModifiedOn(new Date());
        ShippingInfo shippingInfo = ShippingUtil.convertDTOToEntity(shippingInfoDTO);
        ShippingInfo savedShippingInfo = shippingRepository.save(shippingInfo);
        return ShippingUtil.convertEntityToDTO(savedShippingInfo);
    }

}
