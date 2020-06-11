package com.ryzin.penguin.admin.dao;

import java.util.List;

import com.ryzin.penguin.admin.model.FunExpUser;

import org.apache.ibatis.annotations.Param;


public interface FunExpUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(FunExpUser record);

    int insertSelective(FunExpUser record);

    FunExpUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(FunExpUser record);

    int updateByPrimaryKey(FunExpUser record);
    
	List<FunExpUser> findExpUsers(@Param(value="expId") Long expId);
	
	List<FunExpUser> findAll();

    /**
     * 根据user_id查询
     * @param id
     * @return
     */    
    List<FunExpUser> findByUserId(@Param(value="userId") Long userId);

	int deleteByExpId(@Param(value="expId") Long expId);

    int getExpUserCount(@Param(value="expId") Long expId);
}