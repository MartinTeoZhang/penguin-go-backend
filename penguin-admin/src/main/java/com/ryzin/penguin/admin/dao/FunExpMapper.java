package com.ryzin.penguin.admin.dao;

import java.util.List;

import com.ryzin.penguin.admin.model.FunExp;
import com.ryzin.penguin.core.page.PageResult;

/**
 * ---------------------------
 *  (FunExpMapper)         
 * ---------------------------
 * 作者：  kitty-generator
 * 时间：  2020-06-01 15:26:15
 * 说明：  我是由代码生成器生生成的
 * ---------------------------
 */
public interface FunExpMapper {

	/**
	 * 添加
	 * @param record
	 * @return
	 */
    int add(FunExp record);

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
    int update(FunExp record);
    
    /**
     * 根据主键查询
     * @param id
     * @return
     */    
    FunExp findById(Long id);

    /**
     * 基础分页查询
     * @param record
     * @return
     */    
    List<FunExp> findPage();
    
    /**
     * 根据被试user_id分页查询
     * @param user_id
     * @return
     */    
    List<FunExp> findPageBySubjectUserId(Long user_id);
    
    /**
     * 根据主试user_id分页查询
     * @param user_id
     * @return
     */    
    List<FunExp> findPageByExperimenterUserId(Long user_id);
    
}