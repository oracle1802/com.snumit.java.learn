package com.snumit.java.learn.spring001.persistence.entity;

import org.hibernate.annotations.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

/**
 * Created by Andrey on 17.05.2017.
 */
@Entity
@Table(name = "SIT$USER")
public class User implements Serializable, UserDetails {
    String userId;
    private int version;

    String password;

    boolean isAccountNonExpired;
    boolean isAccountNonLocked;
    boolean isCredentialsNonExpired;
    boolean isEnabled;


    String loginName;
    String firstName;
    String middleName;
    String lastName;

    Date dateAdd;

    @Id
    @Column(name = "USER#")
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Version
    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    @Basic
    @Column(name = "PASSWORD")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    @Type(type = "true_false")
    @Column(name = "IS_ACCOUNT_NON_EXPIRED")
    public boolean isAccountNonExpired() {
        return isAccountNonExpired;
    }

    public void setAccountNonExpired(boolean accountNonExpired) {
        isAccountNonExpired = accountNonExpired;
    }


    @Type(type = "true_false")
    @Column(name = "IS_ACCOUNT_NON_LOCKED")
    public boolean isAccountNonLocked() {
        return isAccountNonLocked;
    }

    public void setAccountNonLocked(boolean accountNonLocked) {
        isAccountNonLocked = accountNonLocked;
    }

    @Type(type = "true_false")
    @Column(name = "IS_CREDENTIALS_NON_EXPIRED")
    public boolean isCredentialsNonExpired() {
        return isCredentialsNonExpired;
    }

    public void setCredentialsNonExpired(boolean credentialsNonExpired) {
        isCredentialsNonExpired = credentialsNonExpired;
    }

    @Type(type = "true_false")
    @Column(name = "IS_ENABLED")
    public boolean isEnabled() {
        return isEnabled;
    }

    public void setEnabled(boolean enabled) {
        isEnabled = enabled;
    }

    @Basic
    @Column(name = "LOGIN_NAME")
    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    @Basic
    @Column(name = "FIRST_NAME")
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Basic
    @Column(name = "MIDDLE_NAME")
    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    @Basic
    @Column(name = "LAST_NAME")
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Basic
    @Type(type = "date")
    @Column(name = "DATE_ADD")
    public Date getDateAdd() {
        return dateAdd;
    }

    public void setDateAdd(Date dateAdd) {
        this.dateAdd = dateAdd;
    }

    @Override
    @Transient
    public String getUsername() {
        return loginName;
    }

    @Override
    @Transient
    public Collection<? extends GrantedAuthority> getAuthorities() {
        //todo
        Collection<GrantedAuthority> lst = new ArrayList<GrantedAuthority>();
        lst.add(new SimpleGrantedAuthority("ROLE_USER"));
        return lst;
    }

    @Override
    public String toString() {
       return "User:" + userId;
    }
}
