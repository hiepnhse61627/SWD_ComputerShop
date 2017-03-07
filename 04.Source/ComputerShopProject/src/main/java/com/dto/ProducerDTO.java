package com.dto;

import java.util.Date;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public class ProducerDTO {

    private Integer producerId;

    private String producerCd;

    private String producerName;

    private String producerDescription;

    private String producerEmail;

    private String producerAddress;

    private String producerPhone;

    private Date createdOn;

    private String createdBy;

    private Date modifiedOn;

    private String modifiedBy;

    public ProducerDTO() {

    }

    public ProducerDTO(Integer producerId, String producerCd, String producerName, String producerDescription, String producerEmail, String producerAddress, String producerPhone, Date createdOn, String createdBy, Date modifiedOn, String modifiedBy) {
        this.producerId = producerId;
        this.producerCd = producerCd;
        this.producerName = producerName;
        this.producerDescription = producerDescription;
        this.producerEmail = producerEmail;
        this.producerAddress = producerAddress;
        this.producerPhone = producerPhone;
        this.createdOn = createdOn;
        this.createdBy = createdBy;
        this.modifiedOn = modifiedOn;
        this.modifiedBy = modifiedBy;
    }

    public Integer getProducerId() {
        return producerId;
    }

    public void setProducerId(Integer id) {
        this.producerId = id;
    }

    public String getProducerCd() {
        return producerCd;
    }

    public void setProducerCd(String producerCd) {
        this.producerCd = producerCd;
    }

    public String getProducerName() {
        return producerName;
    }

    public void setProducerName(String producerName) {
        this.producerName = producerName;
    }

    public String getProducerDescription() {
        return producerDescription;
    }

    public void setProducerDescription(String producerDescription) {
        this.producerDescription = producerDescription;
    }

    public String getProducerEmail() {
        return producerEmail;
    }

    public void setProducerEmail(String producerEmail) {
        this.producerEmail = producerEmail;
    }

    public String getProducerAddress() {
        return producerAddress;
    }

    public void setProducerAddress(String producerAddress) {
        this.producerAddress = producerAddress;
    }

    public String getProducerPhone() {
        return producerPhone;
    }

    public void setProducerPhone(String producerPhone) {
        this.producerPhone = producerPhone;
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
