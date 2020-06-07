package com.ryzin.penguin.admin.service;

import java.util.List;

import com.ryzin.penguin.admin.model.FunExp;
import com.ryzin.penguin.core.service.CurdService;
import com.ryzin.penguin.admin.model.FunExpUser;


public interface FunExpService extends CurdService<FunExp> {
	
	/**
	 * 查询实验用户集合
	 * @param expId
	 * @return
	 */
	List<FunExpUser> findExpUsers(Long expId);
	
	/**
	 * 保存实验用户
	 * @param records
	 * @return
	 */
	int saveExpUser(FunExpUser record);

	/**
	 * 查询实验的报名人数
	 * @param expId
	 * @return
	 */
	int getExpUserCount(Long expId);
	
}
