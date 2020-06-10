package com.ryzin.penguin.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ryzin.penguin.admin.model.FunUserExp;


public interface FunUserExpMapper {

	/**
	 * 添加
	 * @param record
	 * @return
	 */
    int insert(FunUserExp record);

    /**
     * 删除
     * @param id
     * @return
     */
    int delete(Long id);
    
    /**
     * 修改
     * @param record
     * @return
     */
    int update(FunUserExp record);
    
    /**
     * 根据主键查询
     * @param id
     * @return
     */    
    FunUserExp findById(Long id);

    /**
     * 基础分页查询
     * @param record
     * @return
     */    
    List<FunUserExp> findPage();
    
    int deleteByUserName(@Param(value="userName") String userName);
    
    int deleteByExpId(@Param(value="expId") Long expId);
}