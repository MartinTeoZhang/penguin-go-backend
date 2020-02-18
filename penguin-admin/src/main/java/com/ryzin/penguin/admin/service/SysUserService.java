package com.ryzin.penguin.admin.service;

import java.util.Set;

import com.ryzin.penguin.admin.model.SysUser;
import com.ryzin.penguin.core.service.CurdService;

// SysUserService 接口

public interface SysUserService extends CurdService<SysUser> {

	SysUser findByName(String username);
	
	/**
	 * 查找用户的菜单权限标识集合
	 * @param userName
	 * @return
	 */
	Set<String> findPermissions(String userName);
}