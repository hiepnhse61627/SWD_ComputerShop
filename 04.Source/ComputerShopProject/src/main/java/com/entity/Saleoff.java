package com.entity;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.Date;

/**
 * @author hiepnhse61627
 */
@Entity
@Table(name = "cs_saleoff", catalog = "computershop", schema = "", uniqueConstraints = {
        @UniqueConstraint(columnNames = {"cd"})})
@XmlRootElement
@NamedQueries({
        @NamedQuery(name = "CsSaleoff.findAll", query = "SELECT c FROM CsSaleoff c"),
        @NamedQuery(name = "CsSaleoff.findById", query = "SELECT c FROM CsSaleoff c WHERE c.id = :id"),
        @NamedQuery(name = "CsSaleoff.findByCd", query = "SELECT c FROM CsSaleoff c WHERE c.cd = :cd"),
        @NamedQuery(name = "CsSaleoff.findBySalePercent", query = "SELECT c FROM CsSaleoff c WHERE c.salePercent = :salePercent"),
        @NamedQuery(name = "CsSaleoff.findByDescription", query = "SELECT c FROM CsSaleoff c WHERE c.description = :description"),
        @NamedQuery(name = "CsSaleoff.findByDateFrom", query = "SELECT c FROM CsSaleoff c WHERE c.dateFrom = :dateFrom"),
        @NamedQuery(name = "CsSaleoff.findByDateTo", query = "SELECT c FROM CsSaleoff c WHERE c.dateTo = :dateTo"),
        @NamedQuery(name = "CsSaleoff.findByCreatedOn", query = "SELECT c FROM CsSaleoff c WHERE c.createdOn = :createdOn"),
        @NamedQuery(name = "CsSaleoff.findByCreatedBy", query = "SELECT c FROM CsSaleoff c WHERE c.createdBy = :createdBy"),
        @NamedQuery(name = "CsSaleoff.findByModifiedOn", query = "SELECT c FROM CsSaleoff c WHERE c.modifiedOn = :modifiedOn"),
        @NamedQuery(name = "CsSaleoff.findByModifiedBy", query = "SELECT c FROM CsSaleoff c WHERE c.modifiedBy = :modifiedBy")})
public class Saleoff implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id", nullable = false)
    private Integer id;
    @Basic(optional = false)
    @Column(name = "cd", nullable = false, length = 100)
    private String cd;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "salePercent", precision = 12)
    private Float salePercent;
    @Column(name = "description", length = 255)
    private String description;
    @Column(name = "dateFrom")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateFrom;
    @Column(name = "dateTo")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateTo;
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

    public Saleoff() {
    }

    public Saleoff(Integer id) {
        this.id = id;
    }

    public Saleoff(Integer id, String cd) {
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Saleoff)) {
            return false;
        }
        Saleoff other = (Saleoff) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.CsSaleoff[ id=" + id + " ]";
    }

}
