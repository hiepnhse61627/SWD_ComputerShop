package com.entity;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.Date;

/**
 * @author hiepnhse61627
 */
@Entity
@Table(name = "cs_user", catalog = "computershop", schema = "", uniqueConstraints = {
        @UniqueConstraint(columnNames = {"cd"}),
        @UniqueConstraint(columnNames = {"username"})})
@XmlRootElement
@NamedQueries({
        @NamedQuery(name = "CsUser.findAll", query = "SELECT c FROM CsUser c"),
        @NamedQuery(name = "CsUser.findById", query = "SELECT c FROM CsUser c WHERE c.id = :id"),
        @NamedQuery(name = "CsUser.findByCd", query = "SELECT c FROM CsUser c WHERE c.cd = :cd"),
        @NamedQuery(name = "CsUser.findByUsername", query = "SELECT c FROM CsUser c WHERE c.username = :username"),
        @NamedQuery(name = "CsUser.findByPassword", query = "SELECT c FROM CsUser c WHERE c.password = :password"),
        @NamedQuery(name = "CsUser.findByFirstname", query = "SELECT c FROM CsUser c WHERE c.firstname = :firstname"),
        @NamedQuery(name = "CsUser.findByLastname", query = "SELECT c FROM CsUser c WHERE c.lastname = :lastname"),
        @NamedQuery(name = "CsUser.findByEmail", query = "SELECT c FROM CsUser c WHERE c.email = :email"),
        @NamedQuery(name = "CsUser.findByAddress", query = "SELECT c FROM CsUser c WHERE c.address = :address"),
        @NamedQuery(name = "CsUser.findByPhone", query = "SELECT c FROM CsUser c WHERE c.phone = :phone"),
        @NamedQuery(name = "CsUser.findByCreditCardNo", query = "SELECT c FROM CsUser c WHERE c.creditCardNo = :creditCardNo"),
        @NamedQuery(name = "CsUser.findByIsVip", query = "SELECT c FROM CsUser c WHERE c.isVip = :isVip"),
        @NamedQuery(name = "CsUser.findByIsAdmin", query = "SELECT c FROM CsUser c WHERE c.isAdmin = :isAdmin"),
        @NamedQuery(name = "CsUser.findByCreatedOn", query = "SELECT c FROM CsUser c WHERE c.createdOn = :createdOn"),
        @NamedQuery(name = "CsUser.findByCreatedBy", query = "SELECT c FROM CsUser c WHERE c.createdBy = :createdBy"),
        @NamedQuery(name = "CsUser.findByModifiedOn", query = "SELECT c FROM CsUser c WHERE c.modifiedOn = :modifiedOn"),
        @NamedQuery(name = "CsUser.findByModifiedBy", query = "SELECT c FROM CsUser c WHERE c.modifiedBy = :modifiedBy")})
public class User implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id", nullable = false)
    private Integer id;
    @Basic(optional = false)
    @Column(name = "cd", nullable = false, length = 50)
    private String cd;
    @Basic(optional = false)
    @Column(name = "username", nullable = false, length = 50)
    private String username;
    @Column(name = "password", length = 255)
    private String password;
    @Column(name = "firstname", length = 100)
    private String firstname;
    @Column(name = "lastname", length = 100)
    private String lastname;
    @Column(name = "email", length = 255)
    private String email;
    @Column(name = "address", length = 255)
    private String address;
    @Column(name = "phone", length = 20)
    private String phone;
    @Column(name = "creditCardNo", length = 20)
    private String creditCardNo;
    @Column(name = "isVip")
    private Boolean isVip;
    @Column(name = "isAdmin")
    private Boolean isAdmin;
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

    public User() {
    }

    public User(Integer id) {
        this.id = id;
    }

    public User(Integer id, String cd, String username) {
        this.id = id;
        this.cd = cd;
        this.username = username;
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
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

    public String getCreditCardNo() {
        return creditCardNo;
    }

    public void setCreditCardNo(String creditCardNo) {
        this.creditCardNo = creditCardNo;
    }

    public Boolean getIsVip() {
        return isVip;
    }

    public void setIsVip(Boolean isVip) {
        this.isVip = isVip;
    }

    public Boolean getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(Boolean isAdmin) {
        this.isAdmin = isAdmin;
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
        if (!(object instanceof User)) {
            return false;
        }
        User other = (User) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.CsUser[ id=" + id + " ]";
    }

}

