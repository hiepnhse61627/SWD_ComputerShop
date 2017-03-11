package com.dto;

import java.util.Date;

/**
 * Created by hiepnhse61627 on 08/03/2017.
 */
public class SaleoffDTO {

    private Integer saleOffId;

    private String saleOffCd;

    private Float salePercent;

    private String description;

    private Date dateFrom;

    private Date dateTo;

    private Date createdOn;

    private String createdBy;

    private Date modifiedOn;

    private String modifiedBy;

    public SaleoffDTO() {

    }

    public SaleoffDTO(Integer saleOffId, String saleOffCd, Float salePercent, String description, Date dateFrom, Date dateTo, Date createdOn, String createdBy, Date modifiedOn, String modifiedBy) {
        this.saleOffId = saleOffId;
        this.saleOffCd = saleOffCd;
        this.salePercent = salePercent;
        this.description = description;
        this.dateFrom = dateFrom;
        this.dateTo = dateTo;
        this.createdOn = createdOn;
        this.createdBy = createdBy;
        this.modifiedOn = modifiedOn;
        this.modifiedBy = modifiedBy;
    }

    public Integer getSaleOffId() {
        return saleOffId;
    }

    public void setSaleOffId(Integer saleOffId) {
        this.saleOffId = saleOffId;
    }

    public String getSaleOffCd() {
        return saleOffCd;
    }

    public void setSaleOffCd(String saleOffCd) {
        this.saleOffCd = saleOffCd;
    }

    public Float getSalePercent() {
        return salePercent;
    }

    public void setSalePercent(Float salePercent) {
        this.salePercent = salePercent;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDateFrom() {
        return dateFrom;
    }

    public void setDateFrom(Date dateFrom) {
        this.dateFrom = dateFrom;
    }

    public Date getDateTo() {
        return dateTo;
    }

    public void setDateTo(Date dateTo) {
        this.dateTo = dateTo;
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
