package com.meiyou.pojo;
import java.io.Serializable;
import java.util.Date;

public class ClubBuy implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column club_buy.id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column club_buy.create_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column club_buy.update_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Date updateTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column club_buy.club_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer clubId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column club_buy.buyer_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer buyerId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column club_buy.state
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    private Integer state;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column club_buy.id
     *
     * @return the value of club_buy.id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column club_buy.id
     *
     * @param id the value for club_buy.id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column club_buy.create_time
     *
     * @return the value of club_buy.create_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column club_buy.create_time
     *
     * @param createTime the value for club_buy.create_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column club_buy.update_time
     *
     * @return the value of club_buy.update_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column club_buy.update_time
     *
     * @param updateTime the value for club_buy.update_time
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column club_buy.club_id
     *
     * @return the value of club_buy.club_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getClubId() {
        return clubId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column club_buy.club_id
     *
     * @param clubId the value for club_buy.club_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setClubId(Integer clubId) {
        this.clubId = clubId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column club_buy.buyer_id
     *
     * @return the value of club_buy.buyer_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getBuyerId() {
        return buyerId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column club_buy.buyer_id
     *
     * @param buyerId the value for club_buy.buyer_id
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setBuyerId(Integer buyerId) {
        this.buyerId = buyerId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column club_buy.state
     *
     * @return the value of club_buy.state
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public Integer getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column club_buy.state
     *
     * @param state the value for club_buy.state
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    public void setState(Integer state) {
        this.state = state;
    }
}