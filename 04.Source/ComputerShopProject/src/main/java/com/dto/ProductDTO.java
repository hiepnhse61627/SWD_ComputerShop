package com.dto;

import java.util.Date;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public class ProductDTO {

    private Integer productId;

    private String productCd;

    private String categoryCd;

    private String producerCd;

    private String productName;

    private String productDescription;

    private Float productPrice;

    private Boolean isSaleOff;

    private String saleOffCd;

    private Date createdOn;

    private String createdBy;

    private Date modifiedOn;

    private String modifiedBy;

    public ProductDTO() {

    }

    public ProductDTO(String productCd, String categoryCd, String producerCd, String productName, String productDescription, Float productPrice, Boolean isSaleOff, String saleOffCd, Date createdOn, String createdBy, Date modifiedOn, String modifiedBy) {
        this.productCd = productCd;
        this.categoryCd = categoryCd;
        this.producerCd = producerCd;
        this.productName = productName;
        this.productDescription = productDescription;
        this.productPrice = productPrice;
        this.isSaleOff = isSaleOff;
        this.saleOffCd = saleOffCd;
        this.createdOn = createdOn;
        this.createdBy = createdBy;
        this.modifiedOn = modifiedOn;
        this.modifiedBy = modifiedBy;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductCd() {
        return productCd;
    }

    public void setProductCd(String productCd) {
        this.productCd = productCd;
    }

    public String getCategoryCd() {
        return categoryCd;
    }

    public void setCategoryCd(String categoryCd) {
        this.categoryCd = categoryCd;
    }

    public String getProducerCd() {
        return producerCd;
    }

    public void setProducerCd(String producerCd) {
        this.producerCd = producerCd;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public Float getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Float productPrice) {
        this.productPrice = productPrice;
    }

    public Boolean getSaleOff() {
        return isSaleOff;
    }

    public void setSaleOff(Boolean saleOff) {
        isSaleOff = saleOff;
    }

    public String getSaleOffCd() {
        return saleOffCd;
    }

    public void setSaleOffCd(String saleOffCd) {
        this.saleOffCd = saleOffCd;
    }

    public Date getCreatedOn() {
        return createdOn;
    }

    public void setCreatedOn(Date createdOn) {
        this.createdOn = createdOn;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public Date getModifiedOn() {
        return modifiedOn;
    }

    public void setModifiedOn(Date modifiedOn) {
        this.modifiedOn = modifiedOn;
    }

    public String getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }
}
