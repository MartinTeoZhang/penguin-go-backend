package com.ryzin.penguin.admin.service;

import java.util.List;

import com.ryzin.penguin.admin.model.SysRole;
import com.ryzin.penguin.admin.model.SysRoleMenu;
import com.ryzin.penguin.core.service.CurdService;

public interface SysRoleService extends CurdService<SysRole> {
	/**
	 * 查询全部
	 * @return
	 */
	List<SysRole> findAll();
	
	/**
	 * 查询角色菜单集合
	 * @return
	 */
	List<SysRoleMenu> findMenus(Long roleId);

	/**
	 * 保存角色菜单
	 * @param records
	 * @return
	 */
	int saveRoleMenus(List<SysRoleMenu> records);
}
