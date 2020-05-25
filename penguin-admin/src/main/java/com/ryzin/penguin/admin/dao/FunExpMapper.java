package com.ryzin.penguin.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ryzin.penguin.admin.model.FunExp;

/**
 * ---------------------------
 *  (FunExpMapper)
 * ---------------------------
 * 作者：  kitty-generator
 * 时间：  2020-04-16 09:19:23
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
     * 根据实验名称查询
     * @param name
     * @return
     */
    List<FunExp> findPageByName(@Param(value="name") String name);

    /**
     * 根据实验状态查询
     * @param status
     * @return
     */
    List<FunExp> findPageByStatus(@Param(value="status") Integer status);

}