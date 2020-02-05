package com.ryzin.penguin.admin.service;

import java.util.List;

import com.ryzin.penguin.admin.model.SysUser;

// SysUserService 接口，包含 selectAll 和 findByUserId 两个方法

public interface SysUserService {

    /**
     * 根据用户ID查找用户
     * @param userId
     * @return
     */
    SysUser findByUserId(Long userId);

    /**
     * 查找所有用户
     * @return
     */
    List<SysUser> findAll();

}