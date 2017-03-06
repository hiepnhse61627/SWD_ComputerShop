package com.entity;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.Date;

/**
 * @author hiepnhse61627
 */
@Entity
@Table(name = "cs_order_detail", catalog = "computershop", schema = "")
@XmlRootElement
@NamedQueries({
        @NamedQuery(name = "CsOrderDetail.findAll", query = "SELECT c FROM CsOrderDetail c"),
        @NamedQuery(name = "CsOrderDetail.findById", query = "SELECT c FROM CsOrderDetail c WHERE c.id = :id"),
        @NamedQuery(name = "CsOrderDetail.findByOrderCd", query = "SELECT c FROM CsOrderDetail c WHERE c.orderCd = :orderCd"),
        @NamedQuery(name = "CsOrderDetail.findByProductCd", query = "SELECT c FROM CsOrderDetail c WHERE c.productCd = :productCd"),
        @NamedQuery(name = "CsOrderDetail.findByProductName", query = "SELECT c FROM CsOrderDetail c WHERE c.productName = :productName"),
        @NamedQuery(name = "CsOrderDetail.findByQuantity", query = "SELECT c FROM CsOrderDetail c WHERE c.quantity = :quantity"),
        @NamedQuery(name = "CsOrderDetail.findByUnitPrice", query = "SELECT c FROM CsOrderDetail c WHERE c.unitPrice = :unitPrice"),
        @NamedQuery(name = "CsOrderDetail.findByTotalPrice", query = "SELECT c FROM CsOrderDetail c WHERE c.totalPrice = :totalPrice"),
        @NamedQuery(name = "CsOrderDetail.findByCreatedOn", query = "SELECT c FROM CsOrderDetail c WHERE c.createdOn = :createdOn"),
        @NamedQuery(name = "CsOrderDetail.findByCreatedBy", query = "SELECT c FROM CsOrderDetail c WHERE c.createdBy = :createdBy"),
        @NamedQuery(name = "CsOrderDetail.findByModifiedOn", query = "SELECT c FROM CsOrderDetail c WHERE c.modifiedOn = :modifiedOn"),
        @NamedQuery(name = "CsOrderDetail.findByModifiedBy", query = "SELECT c FROM CsOrderDetail c WHERE c.modifiedBy = :modifiedBy")})
public class OrderDetail implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id", nullable = false)
    private Integer id;
    @Column(name = "orderCd", length = 100)
    private String orderCd;
    @Column(name = "productCd", length = 100)
    private String productCd;
    @Column(name = "productName", length = 255)
    private String productName;
    @Column(name = "quantity")
    private Integer quantity;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "unitPrice", precision = 12)
    private Float unitPrice;
    @Column(name = "totalPrice", precision = 12)
    private Float totalPrice;
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

    public OrderDetail() {
    }

    public OrderDetail(Integer id) {
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

    public String getProductCd() {
        return productCd;
    }

    public void setProductCd(String productCd) {
        this.productCd = productCd;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Float getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Float unitPrice) {
        this.unitPrice = unitPrice;
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
        if (!(object instanceof OrderDetail)) {
            return false;
        }
        OrderDetail other = (OrderDetail) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.CsOrderDetail[ id=" + id + " ]";
    }

}

