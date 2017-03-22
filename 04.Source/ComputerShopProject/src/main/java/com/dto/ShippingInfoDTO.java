package com.dto;

import java.util.Date;

/**
 * Created by MinhQuy on 3/22/2017.
 */
public class ShippingInfoDTO {
    private Integer id;

    private Integer orderId;

    private String shippingType;

    private Float shippingFee;

    private String shippingAddress;

    private Date shippingTime;

    private Date createdOn;

    private Date modifiedOn;

    public ShippingInfoDTO(Integer orderId, String shippingType, Float shippingFee, String shippingAddress, Date shippingTime, Date createdOn, Date modifiedOn) {
        this.orderId = orderId;
        this.shippingType = shippingType;
        this.shippingFee = shippingFee;
        this.shippingAddress = shippingAddress;
        this.shippingTime = shippingTime;
        this.createdOn = createdOn;
        this.modifiedOn = modifiedOn;
    }

    public ShippingInfoDTO() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getShippingType() {
        return shippingType;
    }

    public void setShippingType(String shippingType) {
        this.shippingType = shippingType;
    }

    public Float getShippingFee() {
        return shippingFee;
    }

    public void setShippingFee(Float shippingFee) {
        this.shippingFee = shippingFee;
    }

    public String getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public Date getShippingTime() {
        return shippingTime;
    }

    public void setShippingTime(Date shippingTime) {
        this.shippingTime = shippingTime;
    }

    public Date getCreatedOn() {
        return createdOn;
    }

    public void setCreatedOn(Date createdOn) {
        this.createdOn = createdOn;
    }

    public Date getModifiedOn() {
        return modifiedOn;
    }

    public void setModifiedOn(Date modifiedOn) {
        this.modifiedOn = modifiedOn;
    }
}
