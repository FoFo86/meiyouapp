package com.meiyou.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

public class Tour implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tour.id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tour.create_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tour.update_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date updateTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tour.publish_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer publishId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tour.start_address
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private String startAddress;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tour.end_address
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private String endAddress;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tour.go_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private String goTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tour.go_message
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private String goMessage;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tour.need_num
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer needNum;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tour.reward
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer reward;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tour.pay_type
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer payType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tour.confirm_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer confirmId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tour.state
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer state;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tour.id
     *
     * @return the value of tour.id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tour.id
     *
     * @param id the value for tour.id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tour.create_time
     *
     * @return the value of tour.create_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tour.create_time
     *
     * @param createTime the value for tour.create_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tour.update_time
     *
     * @return the value of tour.update_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tour.update_time
     *
     * @param updateTime the value for tour.update_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tour.publish_id
     *
     * @return the value of tour.publish_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getPublishId() {
        return publishId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tour.publish_id
     *
     * @param publishId the value for tour.publish_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setPublishId(Integer publishId) {
        this.publishId = publishId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tour.start_address
     *
     * @return the value of tour.start_address
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public String getStartAddress() {
        return startAddress;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tour.start_address
     *
     * @param startAddress the value for tour.start_address
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setStartAddress(String startAddress) {
        this.startAddress = startAddress == null ? null : startAddress.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tour.end_address
     *
     * @return the value of tour.end_address
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public String getEndAddress() {
        return endAddress;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tour.end_address
     *
     * @param endAddress the value for tour.end_address
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setEndAddress(String endAddress) {
        this.endAddress = endAddress == null ? null : endAddress.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tour.go_time
     *
     * @return the value of tour.go_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public String getGoTime() {
        return goTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tour.go_time
     *
     * @param goTime the value for tour.go_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setGoTime(String goTime) {
        this.goTime = goTime == null ? null : goTime.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tour.go_message
     *
     * @return the value of tour.go_message
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public String getGoMessage() {
        return goMessage;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tour.go_message
     *
     * @param goMessage the value for tour.go_message
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setGoMessage(String goMessage) {
        this.goMessage = goMessage == null ? null : goMessage.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tour.need_num
     *
     * @return the value of tour.need_num
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getNeedNum() {
        return needNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tour.need_num
     *
     * @param needNum the value for tour.need_num
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setNeedNum(Integer needNum) {
        this.needNum = needNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tour.reward
     *
     * @return the value of tour.reward
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getReward() {
        return reward;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tour.reward
     *
     * @param reward the value for tour.reward
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setReward(Integer reward) {
        this.reward = reward;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tour.pay_type
     *
     * @return the value of tour.pay_type
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getPayType() {
        return payType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tour.pay_type
     *
     * @param payType the value for tour.pay_type
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setPayType(Integer payType) {
        this.payType = payType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tour.confirm_id
     *
     * @return the value of tour.confirm_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getConfirmId() {
        return confirmId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tour.confirm_id
     *
     * @param confirmId the value for tour.confirm_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setConfirmId(Integer confirmId) {
        this.confirmId = confirmId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tour.state
     *
     * @return the value of tour.state
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tour.state
     *
     * @param state the value for tour.state
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setState(Integer state) {
        this.state = state;
    }
}