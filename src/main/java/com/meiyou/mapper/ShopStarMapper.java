package com.meiyou.mapper;

import com.meiyou.pojo.ShopStar;
import com.meiyou.pojo.ShopStarExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ShopStarMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_star
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int countByExample(ShopStarExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_star
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int deleteByExample(ShopStarExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_star
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_star
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int insert(ShopStar record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_star
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int insertSelective(ShopStar record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_star
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    List<ShopStar> selectByExample(ShopStarExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_star
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    ShopStar selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_star
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int updateByExampleSelective(@Param("record") ShopStar record, @Param("example") ShopStarExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_star
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int updateByExample(@Param("record") ShopStar record, @Param("example") ShopStarExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_star
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int updateByPrimaryKeySelective(ShopStar record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_star
     *
     * @mbggenerated Wed Aug 21 16:35:07 CST 2019
     */
    int updateByPrimaryKey(ShopStar record);
}