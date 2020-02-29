package com.ryzin.penguin.admin.service;

import java.util.List;

import com.ryzin.penguin.admin.model.SysDept;
import com.ryzin.penguin.core.service.CurdService;

/**
 * 机构管理
 */
public interface SysDeptService extends CurdService<SysDept> {
	
	/**
	 * 查询机构树
	 * @param userId 
	 * @return
	 */
	List<SysDept> findTree();
}