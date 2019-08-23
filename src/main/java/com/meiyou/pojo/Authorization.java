package com.meiyou.pojo;

import java.util.Date;

public class Authorization {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column authorization.id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column authorization.user_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column authorization.identity_type
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer identityType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column authorization.identifier
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private String identifier;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column authorization.credential
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private String credential;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column authorization.bool_verified
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Boolean boolVerified;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column authorization.create_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column authorization.update_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Date updateTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column authorization.id
     *
     * @return the value of authorization.id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column authorization.id
     *
     * @param id the value for authorization.id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column authorization.user_id
     *
     * @return the value of authorization.user_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column authorization.user_id
     *
     * @param userId the value for authorization.user_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column authorization.identity_type
     *
     * @return the value of authorization.identity_type
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getIdentityType() {
        return identityType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column authorization.identity_type
     *
     * @param identityType the value for authorization.identity_type
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setIdentityType(Integer identityType) {
        this.identityType = identityType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column authorization.identifier
     *
     * @return the value of authorization.identifier
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public String getIdentifier() {
        return identifier;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column authorization.identifier
     *
     * @param identifier the value for authorization.identifier
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setIdentifier(String identifier) {
        this.identifier = identifier == null ? null : identifier.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column authorization.credential
     *
     * @return the value of authorization.credential
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public String getCredential() {
        return credential;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column authorization.credential
     *
     * @param credential the value for authorization.credential
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setCredential(String credential) {
        this.credential = credential == null ? null : credential.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column authorization.bool_verified
     *
     * @return the value of authorization.bool_verified
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Boolean getBoolVerified() {
        return boolVerified;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column authorization.bool_verified
     *
     * @param boolVerified the value for authorization.bool_verified
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setBoolVerified(Boolean boolVerified) {
        this.boolVerified = boolVerified;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column authorization.create_time
     *
     * @return the value of authorization.create_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column authorization.create_time
     *
     * @param createTime the value for authorization.create_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column authorization.update_time
     *
     * @return the value of authorization.update_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column authorization.update_time
     *
     * @param updateTime the value for authorization.update_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}