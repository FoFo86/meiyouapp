package com.meiyou.pojo;

import java.util.Date;

public class Activity {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column activity.id
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column activity.create_time
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column activity.update_time
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    private Date updateTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column activity.publish_id
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    private Integer publishId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column activity.imgs_url
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    private String imgsUrl;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column activity.content
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    private String content;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column activity.read_num
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    private Integer readNum;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column activity.like_num
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    private Integer likeNum;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column activity.commont_num
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    private Integer commontNum;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column activity.bool_close
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    private Boolean boolClose;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column activity.file_type
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    private Integer fileType;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column activity.id
     *
     * @return the value of activity.id
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column activity.id
     *
     * @param id the value for activity.id
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column activity.create_time
     *
     * @return the value of activity.create_time
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column activity.create_time
     *
     * @param createTime the value for activity.create_time
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column activity.update_time
     *
     * @return the value of activity.update_time
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column activity.update_time
     *
     * @param updateTime the value for activity.update_time
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column activity.publish_id
     *
     * @return the value of activity.publish_id
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public Integer getPublishId() {
        return publishId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column activity.publish_id
     *
     * @param publishId the value for activity.publish_id
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public void setPublishId(Integer publishId) {
        this.publishId = publishId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column activity.imgs_url
     *
     * @return the value of activity.imgs_url
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public String getImgsUrl() {
        return imgsUrl;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column activity.imgs_url
     *
     * @param imgsUrl the value for activity.imgs_url
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public void setImgsUrl(String imgsUrl) {
        this.imgsUrl = imgsUrl == null ? null : imgsUrl.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column activity.content
     *
     * @return the value of activity.content
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column activity.content
     *
     * @param content the value for activity.content
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column activity.read_num
     *
     * @return the value of activity.read_num
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public Integer getReadNum() {
        return readNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column activity.read_num
     *
     * @param readNum the value for activity.read_num
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public void setReadNum(Integer readNum) {
        this.readNum = readNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column activity.like_num
     *
     * @return the value of activity.like_num
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public Integer getLikeNum() {
        return likeNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column activity.like_num
     *
     * @param likeNum the value for activity.like_num
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public void setLikeNum(Integer likeNum) {
        this.likeNum = likeNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column activity.commont_num
     *
     * @return the value of activity.commont_num
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public Integer getCommontNum() {
        return commontNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column activity.commont_num
     *
     * @param commontNum the value for activity.commont_num
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public void setCommontNum(Integer commontNum) {
        this.commontNum = commontNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column activity.bool_close
     *
     * @return the value of activity.bool_close
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public Boolean getBoolClose() {
        return boolClose;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column activity.bool_close
     *
     * @param boolClose the value for activity.bool_close
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public void setBoolClose(Boolean boolClose) {
        this.boolClose = boolClose;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column activity.file_type
     *
     * @return the value of activity.file_type
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public Integer getFileType() {
        return fileType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column activity.file_type
     *
     * @param fileType the value for activity.file_type
     *
     * @mbggenerated Fri Sep 06 13:51:23 CST 2019
     */
    public void setFileType(Integer fileType) {
        this.fileType = fileType;
    }
}