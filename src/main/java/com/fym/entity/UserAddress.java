package com.fym.entity;

public class UserAddress {
   
    private Integer id;

    private String userName;

    private String province;

    private String city;

    private String area;

    private String address;

    private String phone;

    private String email;

    private String code;

    private Integer userId;

    private Integer isDefault;

    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_address.id
     *
     * @param id the value for user_address.id
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_address.user_name
     *
     * @return the value of user_address.user_name
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getUserName() {
        return userName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_address.user_name
     *
     * @param userName the value for user_address.user_name
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_address.province
     *
     * @return the value of user_address.province
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getProvince() {
        return province;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_address.province
     *
     * @param province the value for user_address.province
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_address.city
     *
     * @return the value of user_address.city
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getCity() {
        return city;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_address.city
     *
     * @param city the value for user_address.city
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_address.area
     *
     * @return the value of user_address.area
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getArea() {
        return area;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_address.area
     *
     * @param area the value for user_address.area
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setArea(String area) {
        this.area = area == null ? null : area.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_address.address
     *
     * @return the value of user_address.address
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getAddress() {
        return address;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_address.address
     *
     * @param address the value for user_address.address
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_address.phone
     *
     * @return the value of user_address.phone
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getPhone() {
        return phone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_address.phone
     *
     * @param phone the value for user_address.phone
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_address.email
     *
     * @return the value of user_address.email
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getEmail() {
        return email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_address.email
     *
     * @param email the value for user_address.email
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_address.code
     *
     * @return the value of user_address.code
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getCode() {
        return code;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_address.code
     *
     * @param code the value for user_address.code
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_address.user_id
     *
     * @return the value of user_address.user_id
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_address.user_id
     *
     * @param userId the value for user_address.user_id
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_address.is_default
     *
     * @return the value of user_address.is_default
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public Integer getIsDefault() {
        return isDefault;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_address.is_default
     *
     * @param isDefault the value for user_address.is_default
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setIsDefault(Integer isDefault) {
        this.isDefault = isDefault;
    }
}