package com.ryzin.penguin.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ryzin.penguin.admin.model.SysUser;

public interface SysUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysUser record);

    int insertSelective(SysUser record);

    SysUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysUser record);

    int updateByPrimaryKey(SysUser record);
    
    List<SysUser> findPage();
    
    SysUser findByName(@Param(value="name") String name);
    
    long getIdByName(String name);
    
    List<SysUser> findPageByName(@Param(value="name") String name);
    
    List<SysUser> findPageByNameAndEmail(@Param(value="name") String name, @Param(value="email") String email);
<<<<<<< HEAD
	
=======

    List<SysUser> findExpUsersPageByExpId(@Param(value="expId") Long expId);
>>>>>>> 4d631f83e7eb7ea9c166fd7d2c0516757bb67fff
}