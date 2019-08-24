package com.meiyou.pojo;

import java.io.Serializable;
import java.util.Date;

public class Admin implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column admin.id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column admin.admin_account
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private String adminAccount;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column admin.admin_password
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private String adminPassword;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column admin.role
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer role;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column admin.create_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column admin.update_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Date updateTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column admin.id
     *
     * @return the value of admin.id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column admin.id
     *
     * @param id the value for admin.id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column admin.admin_account
     *
     * @return the value of admin.admin_account
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public String getAdminAccount() {
        return adminAccount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column admin.admin_account
     *
     * @param adminAccount the value for admin.admin_account
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setAdminAccount(String adminAccount) {
        this.adminAccount = adminAccount == null ? null : adminAccount.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column admin.admin_password
     *
     * @return the value of admin.admin_password
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public String getAdminPassword() {
        return adminPassword;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column admin.admin_password
     *
     * @param adminPassword the value for admin.admin_password
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword == null ? null : adminPassword.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column admin.role
     *
     * @return the value of admin.role
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getRole() {
        return role;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column admin.role
     *
     * @param role the value for admin.role
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setRole(Integer role) {
        this.role = role;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column admin.create_time
     *
     * @return the value of admin.create_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column admin.create_time
     *
     * @param createTime the value for admin.create_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column admin.update_time
     *
     * @return the value of admin.update_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column admin.update_time
     *
     * @param updateTime the value for admin.update_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}