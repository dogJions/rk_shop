package com.fym.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class VipUser {
    
    private Integer id;

    private String username;

    private String password;

    private String phone;

    private String email;

    private BigDecimal rechargeMoney;
    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date addTime;

    private String userImg;

    private Integer isState;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date lastLoginTime;

    private String lastIp;

    private String remark;
    
    private List<UserCartLog> userCarLog;
    
    private List<ShopOrder> order;

	public List<UserCartLog> getUserCarLog() {
		return userCarLog;
	}

	public void setUserCarLog(List<UserCartLog> userCarLog) {
		this.userCarLog = userCarLog;
	}

	public List<ShopOrder> getOrder() {
		return order;
	}

	public void setOrder(List<ShopOrder> order) {
		this.order = order;
	}

	public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vip_user.id
     *
     * @param id the value for vip_user.id
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vip_user.username
     *
     * @return the value of vip_user.username
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getUsername() {
        return username;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vip_user.username
     *
     * @param username the value for vip_user.username
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vip_user.password
     *
     * @return the value of vip_user.password
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getPassword() {
        return password;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vip_user.password
     *
     * @param password the value for vip_user.password
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vip_user.phone
     *
     * @return the value of vip_user.phone
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getPhone() {
        return phone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vip_user.phone
     *
     * @param phone the value for vip_user.phone
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vip_user.email
     *
     * @return the value of vip_user.email
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getEmail() {
        return email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vip_user.email
     *
     * @param email the value for vip_user.email
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vip_user.recharge_money
     *
     * @return the value of vip_user.recharge_money
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public BigDecimal getRechargeMoney() {
        return rechargeMoney;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vip_user.recharge_money
     *
     * @param rechargeMoney the value for vip_user.recharge_money
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setRechargeMoney(BigDecimal rechargeMoney) {
        this.rechargeMoney = rechargeMoney;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vip_user.add_time
     *
     * @return the value of vip_user.add_time
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public Date getAddTime() {
        return addTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vip_user.add_time
     *
     * @param addTime the value for vip_user.add_time
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vip_user.user_img
     *
     * @return the value of vip_user.user_img
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getUserImg() {
        return userImg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vip_user.user_img
     *
     * @param userImg the value for vip_user.user_img
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setUserImg(String userImg) {
        this.userImg = userImg == null ? null : userImg.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vip_user.is_state
     *
     * @return the value of vip_user.is_state
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public Integer getIsState() {
        return isState;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vip_user.is_state
     *
     * @param isState the value for vip_user.is_state
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setIsState(Integer isState) {
        this.isState = isState;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vip_user.last_login_time
     *
     * @return the value of vip_user.last_login_time
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public Date getLastLoginTime() {
        return lastLoginTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vip_user.last_login_time
     *
     * @param lastLoginTime the value for vip_user.last_login_time
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vip_user.last_ip
     *
     * @return the value of vip_user.last_ip
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getLastIp() {
        return lastIp;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vip_user.last_ip
     *
     * @param lastIp the value for vip_user.last_ip
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setLastIp(String lastIp) {
        this.lastIp = lastIp == null ? null : lastIp.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vip_user.remark
     *
     * @return the value of vip_user.remark
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getRemark() {
        return remark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vip_user.remark
     *
     * @param remark the value for vip_user.remark
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}