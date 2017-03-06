package com.entity;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.Date;

/**
 * @author hiepnhse61627
 */
@Entity
@Table(name = "cs_producer", catalog = "computershop", schema = "", uniqueConstraints = {
        @UniqueConstraint(columnNames = {"cd"})})
@XmlRootElement
@NamedQueries({
        @NamedQuery(name = "CsProducer.findAll", query = "SELECT c FROM CsProducer c"),
        @NamedQuery(name = "CsProducer.findById", query = "SELECT c FROM CsProducer c WHERE c.id = :id"),
        @NamedQuery(name = "CsProducer.findByCd", query = "SELECT c FROM CsProducer c WHERE c.cd = :cd"),
        @NamedQuery(name = "CsProducer.findByName", query = "SELECT c FROM CsProducer c WHERE c.name = :name"),
        @NamedQuery(name = "CsProducer.findByDescription", query = "SELECT c FROM CsProducer c WHERE c.description = :description"),
        @NamedQuery(name = "CsProducer.findByEmail", query = "SELECT c FROM CsProducer c WHERE c.email = :email"),
        @NamedQuery(name = "CsProducer.findByAddress", query = "SELECT c FROM CsProducer c WHERE c.address = :address"),
        @NamedQuery(name = "CsProducer.findByPhone", query = "SELECT c FROM CsProducer c WHERE c.phone = :phone"),
        @NamedQuery(name = "CsProducer.findByCreatedOn", query = "SELECT c FROM CsProducer c WHERE c.createdOn = :createdOn"),
        @NamedQuery(name = "CsProducer.findByCreatedBy", query = "SELECT c FROM CsProducer c WHERE c.createdBy = :createdBy"),
        @NamedQuery(name = "CsProducer.findByModifiedOn", query = "SELECT c FROM CsProducer c WHERE c.modifiedOn = :modifiedOn"),
        @NamedQuery(name = "CsProducer.findByModifiedBy", query = "SELECT c FROM CsProducer c WHERE c.modifiedBy = :modifiedBy")})
public class Producer implements Serializable {

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
    @Column(name = "email", length = 255)
    private String email;
    @Column(name = "address", length = 255)
    private String address;
    @Column(name = "phone", length = 20)
    private String phone;
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

    public Producer() {
    }

    public Producer(Integer id) {
        this.id = id;
    }

    public Producer(Integer id, String cd) {
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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
        if (!(object instanceof Producer)) {
            return false;
        }
        Producer other = (Producer) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.CsProducer[ id=" + id + " ]";
    }

}

