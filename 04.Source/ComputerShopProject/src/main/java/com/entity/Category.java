package com.entity;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.Date;

/**
 * @author hiepnhse61627
 */
@Entity
@Table(name = "cs_category", catalog = "computershop", schema = "", uniqueConstraints = {
        @UniqueConstraint(columnNames = {"cd"})})
@XmlRootElement
@NamedQueries({
        @NamedQuery(name = "CsCategory.findAll", query = "SELECT c FROM CsCategory c"),
        @NamedQuery(name = "CsCategory.findById", query = "SELECT c FROM CsCategory c WHERE c.id = :id"),
        @NamedQuery(name = "CsCategory.findByCd", query = "SELECT c FROM CsCategory c WHERE c.cd = :cd"),
        @NamedQuery(name = "CsCategory.findByName", query = "SELECT c FROM CsCategory c WHERE c.name = :name"),
        @NamedQuery(name = "CsCategory.findByDescription", query = "SELECT c FROM CsCategory c WHERE c.description = :description"),
        @NamedQuery(name = "CsCategory.findByCreatedOn", query = "SELECT c FROM CsCategory c WHERE c.createdOn = :createdOn"),
        @NamedQuery(name = "CsCategory.findByCreatedBy", query = "SELECT c FROM CsCategory c WHERE c.createdBy = :createdBy"),
        @NamedQuery(name = "CsCategory.findByModifiedOn", query = "SELECT c FROM CsCategory c WHERE c.modifiedOn = :modifiedOn"),
        @NamedQuery(name = "CsCategory.findByModifiedBy", query = "SELECT c FROM CsCategory c WHERE c.modifiedBy = :modifiedBy")})
public class Category implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id", nullable = false)
    private Integer id;
    @Basic(optional = false)
    @Column(name = "cd", nullable = false, length = 100)
    private String cd;
    @Column(name = "name", length = 255)
    private String name;
    @Column(name = "description", length = 255)
    private String description;
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

    public Category() {
    }

    public Category(Integer id) {
        this.id = id;
    }

    public Category(Integer id, String cd) {
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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
        if (!(object instanceof Category)) {
            return false;
        }
        Category other = (Category) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.CsCategory[ id=" + id + " ]";
    }

}
