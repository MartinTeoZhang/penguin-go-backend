package com.ryzin.penguin.admin.dao;

import java.util.List;

import com.ryzin.penguin.admin.model.SysAvatar;

/**
 * ---------------------------
 * 用户头像存储 (SysAvatarMapper)         
 * ---------------------------
 * 作者：  kitty-generator
 * 时间：  2020-06-30 04:03:47
 * 说明：  我是由代码生成器生生成的
 * ---------------------------
 */
public interface SysAvatarMapper {

	/**
	 * 添加用户头像存储
	 * @param record
	 * @return
	 */
    int add(SysAvatar record);

    /**
     * 删除用户头像存储
     * @param id
     * @return
     */
    int delete(Long id);
    
    /**
     * 修改用户头像存储
     * @param record
     * @return
     */
    int update(SysAvatar record);
    
    /**
     * 根据主键查询
     * @param id
     * @return
     */    
    SysAvatar findById(Long id);

    /**
     * 基础分页查询
     * @param record
     * @return
     */    
    List<SysAvatar> findPage();
    
    /**
     * 根据用户编号查询
     * @param record
     * @return
     */    
    SysAvatar findByUserId(Long userId);
    
    
}