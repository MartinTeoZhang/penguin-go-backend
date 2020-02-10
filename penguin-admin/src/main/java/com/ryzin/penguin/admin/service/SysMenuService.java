package com.ryzin.penguin.admin.service;

import java.util.List;

import com.ryzin.penguin.admin.model.SysMenu;
import com.ryzin.penguin.core.service.CurdService;

public interface SysMenuService extends CurdService<SysMenu> {

	/**
	 * 查询菜单树,用户ID和用户名为空则查询全部
	 * @param userId 
	 * @return
	 */
	List<SysMenu> findTree(String userName);
}