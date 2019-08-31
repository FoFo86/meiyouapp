package com.meiyou.mapper;

import com.meiyou.pojo.Cash;
import com.meiyou.pojo.CashExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CashMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cash
     *
     * @mbggenerated Fri Aug 30 21:15:56 CST 2019
     */
    int countByExample(CashExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cash
     *
     * @mbggenerated Fri Aug 30 21:15:56 CST 2019
     */
    int deleteByExample(CashExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cash
     *
     * @mbggenerated Fri Aug 30 21:15:56 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cash
     *
     * @mbggenerated Fri Aug 30 21:15:56 CST 2019
     */
    int insert(Cash record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cash
     *
     * @mbggenerated Fri Aug 30 21:15:56 CST 2019
     */
    int insertSelective(Cash record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cash
     *
     * @mbggenerated Fri Aug 30 21:15:56 CST 2019
     */
    List<Cash> selectByExample(CashExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cash
     *
     * @mbggenerated Fri Aug 30 21:15:56 CST 2019
     */
    Cash selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cash
     *
     * @mbggenerated Fri Aug 30 21:15:56 CST 2019
     */
    int updateByExampleSelective(@Param("record") Cash record, @Param("example") CashExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cash
     *
     * @mbggenerated Fri Aug 30 21:15:56 CST 2019
     */
    int updateByExample(@Param("record") Cash record, @Param("example") CashExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cash
     *
     * @mbggenerated Fri Aug 30 21:15:56 CST 2019
     */
    int updateByPrimaryKeySelective(Cash record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cash
     *
     * @mbggenerated Fri Aug 30 21:15:56 CST 2019
     */
    int updateByPrimaryKey(Cash record);
}