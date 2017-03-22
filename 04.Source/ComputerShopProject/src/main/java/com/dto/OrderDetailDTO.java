package com.dto;

import java.util.Date;

/**
 * Created by MinhQuy on 3/21/2017.
 */
public class OrderDetailDTO {
    private Integer id;

    private Integer orderId;

    private String productCd;

    private Integer quantity;

    private float totalPrice;

    private float totalSaleOff;

    private Date createdOn;

    private Date modifiedOn;

    public OrderDetailDTO() {
    }

    public OrderDetailDTO(Integer orderId, String productCd, Integer quantity, float totalPrice, float totalSaleOff, Date createdOn, Date modifiedOn) {
        this.orderId = orderId;
        this.productCd = productCd;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
        this.totalSaleOff = totalSaleOff;
        this.createdOn = createdOn;
        this.modifiedOn = modifiedOn;
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

    public String getProductCd() {
        return productCd;
    }

    public void setProductCd(String productCd) {
        this.productCd = productCd;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public float getTotalSaleOff() {
        return totalSaleOff;
    }

    public void setTotalSaleOff(float totalSaleOff) {
        this.totalSaleOff = totalSaleOff;
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
