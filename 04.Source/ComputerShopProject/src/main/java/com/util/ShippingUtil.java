package com.util;

import com.dto.ShippingInfoDTO;
import com.entity.ShippingInfo;

import java.util.Date;

/**
 * Created by MinhQuy on 3/22/2017.
 */
public class ShippingUtil {
    public static ShippingInfoDTO convertEntityToDTO(ShippingInfo shippingInfo) {
        ShippingInfoDTO shippingInfoDTO = new ShippingInfoDTO();
        shippingInfoDTO.setId(shippingInfo.getId());
        shippingInfoDTO.setShippingAddress(shippingInfo.getShippingAddress());
        shippingInfoDTO.setShippingFee(shippingInfo.getShippingFee());
        shippingInfoDTO.setShippingTime(shippingInfo.getShippingTime());
        shippingInfoDTO.setShippingType(shippingInfo.getShippingType());
        shippingInfoDTO.setOrderId(shippingInfo.getOrderId());
        shippingInfoDTO.setCreatedOn(shippingInfo.getCreatedOn());
        shippingInfoDTO.setModifiedOn(shippingInfo.getModifiedOn());
        return shippingInfoDTO;
    }

    public static ShippingInfo convertDTOToEntity(ShippingInfoDTO shippingInfoDTO) {
        ShippingInfo shippingInfo = new ShippingInfo();
        shippingInfo.setOrderId(shippingInfoDTO.getOrderId());
        shippingInfo.setShippingType(shippingInfoDTO.getShippingType());
        shippingInfo.setShippingTime(shippingInfoDTO.getShippingTime());
        shippingInfo.setShippingFee(shippingInfoDTO.getShippingFee());
        shippingInfo.setShippingAddress(shippingInfoDTO.getShippingAddress());
        shippingInfo.setCreatedOn(new Date());
        shippingInfo.setModifiedOn(new Date());
        return shippingInfo;
    }
}
