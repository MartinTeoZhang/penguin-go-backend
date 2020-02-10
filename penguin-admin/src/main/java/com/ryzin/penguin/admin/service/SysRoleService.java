package com.ryzin.penguin.admin.service;

import java.util.List;

import com.ryzin.penguin.admin.model.SysRole;
import com.ryzin.penguin.core.service.CurdService;

public interface SysRoleService extends CurdService<SysRole> {
	/**
	 * 查询全部
	 * @return
	 */
	List<SysRole> findAll();
}
