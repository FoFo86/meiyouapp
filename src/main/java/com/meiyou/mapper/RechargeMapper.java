package com.meiyou.mapper;

import com.meiyou.pojo.Recharge;
import com.meiyou.pojo.RechargeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RechargeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table recharge
     *
     * @mbggenerated Wed Aug 21 11:49:14 CST 2019
     */
    int countByExample(RechargeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table recharge
     *
     * @mbggenerated Wed Aug 21 11:49:14 CST 2019
     */
    int deleteByExample(RechargeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table recharge
     *
     * @mbggenerated Wed Aug 21 11:49:14 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table recharge
     *
     * @mbggenerated Wed Aug 21 11:49:14 CST 2019
     */
    int insert(Recharge record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table recharge
     *
     * @mbggenerated Wed Aug 21 11:49:14 CST 2019
     */
    int insertSelective(Recharge record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table recharge
     *
     * @mbggenerated Wed Aug 21 11:49:14 CST 2019
     */
    List<Recharge> selectByExample(RechargeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table recharge
     *
     * @mbggenerated Wed Aug 21 11:49:14 CST 2019
     */
    Recharge selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table recharge
     *
     * @mbggenerated Wed Aug 21 11:49:14 CST 2019
     */
    int updateByExampleSelective(@Param("record") Recharge record, @Param("example") RechargeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table recharge
     *
     * @mbggenerated Wed Aug 21 11:49:14 CST 2019
     */
    int updateByExample(@Param("record") Recharge record, @Param("example") RechargeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table recharge
     *
     * @mbggenerated Wed Aug 21 11:49:14 CST 2019
     */
    int updateByPrimaryKeySelective(Recharge record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table recharge
     *
     * @mbggenerated Wed Aug 21 11:49:14 CST 2019
     */
    int updateByPrimaryKey(Recharge record);
}