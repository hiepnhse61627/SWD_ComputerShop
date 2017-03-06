package com.entity;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.Date;

/**
 * @author hiepnhse61627
 */
@Entity
@Table(name = "cs_order", catalog = "computershop", schema = "", uniqueConstraints = {
        @UniqueConstraint(columnNames = {"cd"})})
@XmlRootElement
@NamedQueries({
        @NamedQuery(name = "CsOrder.findAll", query = "SELECT c FROM CsOrder c"),
        @NamedQuery(name = "CsOrder.findById", query = "SELECT c FROM CsOrder c WHERE c.id = :id"),
        @NamedQuery(name = "CsOrder.findByCd", query = "SELECT c FROM CsOrder c WHERE c.cd = :cd"),
        @NamedQuery(name = "CsOrder.findByCustomerCd", query = "SELECT c FROM CsOrder c WHERE c.customerCd = :customerCd"),
        @NamedQuery(name = "CsOrder.findByCustomerName", query = "SELECT c FROM CsOrder c WHERE c.customerName = :customerName"),
        @NamedQuery(name = "CsOrder.findByStatus", query = "SELECT c FROM CsOrder c WHERE c.status = :status"),
        @NamedQuery(name = "CsOrder.findByCreatedOn", query = "SELECT c FROM CsOrder c WHERE c.createdOn = :createdOn"),
        @NamedQuery(name = "CsOrder.findByCreatedBy", query = "SELECT c FROM CsOrder c WHERE c.createdBy = :createdBy"),
        @NamedQuery(name = "CsOrder.findByModifiedOn", query = "SELECT c FROM CsOrder c WHERE c.modifiedOn = :modifiedOn"),
        @NamedQuery(name = "CsOrder.findByModifiedBy", query = "SELECT c FROM CsOrder c WHERE c.modifiedBy = :modifiedBy")})
public class Order implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id", nullable = false)
    private Integer id;
    @Basic(optional = false)
    @Column(name = "cd", nullable = false, length = 100)
    private String cd;
    @Column(name = "customerCd", length = 50)
    private String customerCd;
    @Column(name = "customerName", length = 200)
    private String customerName;
    @Column(name = "status", length = 50)
    private String status;
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

    public Order() {
    }

    public Order(Integer id) {
        this.id = id;
    }

    public Order(Integer id, String cd) {
        this.id = id;
        this.cd = cd;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCd() {
        return cd;
    }

    public void setCd(String cd) {
        this.cd = cd;
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
        if (!(object instanceof Order)) {
            return false;
        }
        Order other = (Order) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.CsOrder[ id=" + id + " ]";
    }

}
