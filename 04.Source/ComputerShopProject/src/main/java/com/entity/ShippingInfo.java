package com.entity;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.Date;

/**
 * @author hiepnhse61627
 */
@Entity
@Table(name = "cs_shipping_info", catalog = "computershop", schema = "")
@XmlRootElement
@NamedQueries({
        @NamedQuery(name = "CsShippingInfo.findAll", query = "SELECT c FROM CsShippingInfo c"),
        @NamedQuery(name = "CsShippingInfo.findById", query = "SELECT c FROM CsShippingInfo c WHERE c.id = :id"),
        @NamedQuery(name = "CsShippingInfo.findByOrderCd", query = "SELECT c FROM CsShippingInfo c WHERE c.orderCd = :orderCd"),
        @NamedQuery(name = "CsShippingInfo.findByShippingType", query = "SELECT c FROM CsShippingInfo c WHERE c.shippingType = :shippingType"),
        @NamedQuery(name = "CsShippingInfo.findByShippingFee", query = "SELECT c FROM CsShippingInfo c WHERE c.shippingFee = :shippingFee"),
        @NamedQuery(name = "CsShippingInfo.findByShippingAddress", query = "SELECT c FROM CsShippingInfo c WHERE c.shippingAddress = :shippingAddress"),
        @NamedQuery(name = "CsShippingInfo.findByShippingTime", query = "SELECT c FROM CsShippingInfo c WHERE c.shippingTime = :shippingTime"),
        @NamedQuery(name = "CsShippingInfo.findByCreatedOn", query = "SELECT c FROM CsShippingInfo c WHERE c.createdOn = :createdOn"),
        @NamedQuery(name = "CsShippingInfo.findByCreatedBy", query = "SELECT c FROM CsShippingInfo c WHERE c.createdBy = :createdBy"),
        @NamedQuery(name = "CsShippingInfo.findByModifiedOn", query = "SELECT c FROM CsShippingInfo c WHERE c.modifiedOn = :modifiedOn"),
        @NamedQuery(name = "CsShippingInfo.findByModifiedBy", query = "SELECT c FROM CsShippingInfo c WHERE c.modifiedBy = :modifiedBy")})
public class ShippingInfo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id", nullable = false)
    private Integer id;
    @Column(name = "orderCd", length = 100)
    private String orderCd;
    @Column(name = "shippingType", length = 100)
    private String shippingType;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "shippingFee", precision = 12)
    private Float shippingFee;
    @Column(name = "shippingAddress", length = 255)
    private String shippingAddress;
    @Column(name = "shippingTime")
    @Temporal(TemporalType.TIMESTAMP)
    private Date shippingTime;
    @Column(name = "createdOn")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdOn;
    @Column(name = "createdBy", length = 50)
    private String createdBy;
    @Column(name = "modifiedOn")
    @Temporal(TemporalType.TIMESTAMP)
    private Date modifiedOn;
    @Column(name = "modifiedBy", length = 50)
    private String modifiedBy;

    public ShippingInfo() {
    }

    public ShippingInfo(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderCd() {
        return orderCd;
    }

    public void setOrderCd(String orderCd) {
        this.orderCd = orderCd;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ShippingInfo)) {
            return false;
        }
        ShippingInfo other = (ShippingInfo) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.CsShippingInfo[ id=" + id + " ]";
    }

}

