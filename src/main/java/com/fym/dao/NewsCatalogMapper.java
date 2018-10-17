package com.fym.dao;

import java.util.List;

import com.fym.entity.NewsCatalog;

public interface NewsCatalogMapper {
	
	List<NewsCatalog> selectAll();
	
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_catalog
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_catalog
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    int insert(NewsCatalog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_catalog
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    int insertSelective(NewsCatalog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_catalog
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    NewsCatalog selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_catalog
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    int updateByPrimaryKeySelective(NewsCatalog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_catalog
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    int updateByPrimaryKeyWithBLOBs(NewsCatalog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_catalog
     *
     * @mbg.generated Wed Sep 26 09:06:19 CST 2018
     */
    int updateByPrimaryKey(NewsCatalog record);
}