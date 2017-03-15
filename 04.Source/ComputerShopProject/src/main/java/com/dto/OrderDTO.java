package com.dto;

import java.util.Date;

/**
 * Created by MinhQuy on 3/12/2017.
 */
public class OrderDTO {
    private Integer id;

    private String customerCd;

    private String customerName;

    private String status;

    private Float totalPrice;

    private Date createdOn;

    private String modifiedBy;

    private Date modifiedOn;

    public OrderDTO(Integer id, String customerCd, String customerName, String status, Float totalPrice, Date createdOn, String modifiedBy, Date modifiedOn) {
        this.id = id;
        this.customerCd = customerCd;
        this.customerName = customerName;
        this.status = status;
        this.totalPrice = totalPrice;
        this.createdOn = createdOn;
        this.modifiedBy = modifiedBy;
        this.modifiedOn = modifiedOn;
    }

    public OrderDTO() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCustomerCd() {
        return customerCd;
    }

    public void setCustomerCd(String customerCd) {
        this.customerCd = customerCd;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Date getCreatedOn() {
        return createdOn;
    }

    public void setCreatedOn(Date createdOn) {
        this.createdOn = createdOn;
    }

    public String getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    public Date getModifiedOn() {
        return modifiedOn;
    }

    public void setModifiedOn(Date modifiedOn) {
        this.modifiedOn = modifiedOn;
    }
}
