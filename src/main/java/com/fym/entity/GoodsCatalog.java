package com.fym.entity;

public class GoodsCatalog {
    
    private Integer id;

    private String name;

    private String remark;

    
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_catalog.id
     *
     * @param id the value for goods_catalog.id
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_catalog.name
     *
     * @return the value of goods_catalog.name
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_catalog.name
     *
     * @param name the value for goods_catalog.name
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_catalog.remark
     *
     * @return the value of goods_catalog.remark
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public String getRemark() {
        return remark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_catalog.remark
     *
     * @param remark the value for goods_catalog.remark
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}