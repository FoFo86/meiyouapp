package com.meiyou.mapper;

import com.meiyou.pojo.ShopBuy;
import com.meiyou.pojo.ShopBuyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ShopBuyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_buy
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int countByExample(ShopBuyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_buy
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int deleteByExample(ShopBuyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_buy
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_buy
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int insert(ShopBuy record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_buy
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int insertSelective(ShopBuy record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_buy
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    List<ShopBuy> selectByExample(ShopBuyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_buy
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    ShopBuy selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_buy
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int updateByExampleSelective(@Param("record") ShopBuy record, @Param("example") ShopBuyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_buy
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int updateByExample(@Param("record") ShopBuy record, @Param("example") ShopBuyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_buy
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int updateByPrimaryKeySelective(ShopBuy record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_buy
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int updateByPrimaryKey(ShopBuy record);
}