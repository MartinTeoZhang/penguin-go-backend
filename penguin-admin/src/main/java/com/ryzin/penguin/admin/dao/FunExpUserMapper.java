package com.ryzin.penguin.admin.dao;

import java.util.List;

import com.ryzin.penguin.admin.model.FunExpUser;

/**
 * ---------------------------
 *  (FunExpUserMapper)         
 * ---------------------------
 * 作者：  kitty-generator
 * 时间：  2020-06-01 15:26:15
 * 说明：  我是由代码生成器生生成的
 * ---------------------------
 */
public interface FunExpUserMapper {

	/**
	 * 添加
	 * @param record
	 * @return
	 */
    int add(FunExpUser record);

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
    int update(FunExpUser record);
    
    /**
     * 根据主键查询
     * @param id
     * @return
     */    
    FunExpUser findById(Long id);

    /**
     * 基础分页查询
     * @param record
     * @return
     */    
    List<FunExpUser> findPage();
    
    /**
     * 根据user_id查询
     * @param id
     * @return
     */    
    List<FunExpUser> findByUserId(long user_id);
    
    
}