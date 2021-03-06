package com.fym.entity;

import java.util.Date;

public class ShopAd {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column shop_ad.id
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column shop_ad.name
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    private String name;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column shop_ad.ad_img
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    private String adImg;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column shop_ad.start_time
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    private Date startTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column shop_ad.end_time
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    private Date endTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column shop_ad.target_url
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    private String targetUrl;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column shop_ad.remark
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    private String remark;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column shop_ad.id
     *
     * @return the value of shop_ad.id
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column shop_ad.id
     *
     * @param id the value for shop_ad.id
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column shop_ad.name
     *
     * @return the value of shop_ad.name
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column shop_ad.name
     *
     * @param name the value for shop_ad.name
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column shop_ad.ad_img
     *
     * @return the value of shop_ad.ad_img
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getAdImg() {
        return adImg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column shop_ad.ad_img
     *
     * @param adImg the value for shop_ad.ad_img
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setAdImg(String adImg) {
        this.adImg = adImg == null ? null : adImg.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column shop_ad.start_time
     *
     * @return the value of shop_ad.start_time
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public Date getStartTime() {
        return startTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column shop_ad.start_time
     *
     * @param startTime the value for shop_ad.start_time
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column shop_ad.end_time
     *
     * @return the value of shop_ad.end_time
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column shop_ad.end_time
     *
     * @param endTime the value for shop_ad.end_time
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column shop_ad.target_url
     *
     * @return the value of shop_ad.target_url
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getTargetUrl() {
        return targetUrl;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column shop_ad.target_url
     *
     * @param targetUrl the value for shop_ad.target_url
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setTargetUrl(String targetUrl) {
        this.targetUrl = targetUrl == null ? null : targetUrl.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column shop_ad.remark
     *
     * @return the value of shop_ad.remark
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getRemark() {
        return remark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column shop_ad.remark
     *
     * @param remark the value for shop_ad.remark
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}