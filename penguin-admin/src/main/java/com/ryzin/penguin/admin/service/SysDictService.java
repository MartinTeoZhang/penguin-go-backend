package com.ryzin.penguin.admin.service;

import java.util.List;

import com.ryzin.penguin.admin.model.SysDict;
import com.ryzin.penguin.core.service.CurdService;

public interface SysDictService extends CurdService<SysDict> {

	/**
	 * 根据名称查询
	 * @param label
	 * @return
	 */
	List<SysDict> findByLabel(String label);
}
