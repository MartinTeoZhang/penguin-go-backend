package com.ryzin.penguin.admin.service;

import java.util.List;

import com.ryzin.penguin.admin.model.FunExp;
import com.ryzin.penguin.core.service.CurdService;
import com.ryzin.penguin.admin.model.FunExpUser;
import com.ryzin.penguin.admin.model.FunUserExp;


public interface FunExpService extends CurdService<FunExp> {
	
	/**
	 * 查询实验用户集合
	 * @param expId
	 * @return
	 */
	List<FunExpUser> findExpUsers(Long expId);
	
	/**
	 * 保存实验被试
	 * @param records
	 * @return
	 */
	int saveExpUser(FunExpUser record);
	
	/**
	 * 保存主试实验
	 * @param records
	 * @return
	 */
	int saveUserExp(FunUserExp record);
	
	/**
	 * 查询实验的报名人数
	 * @param expId
	 * @return
	 */
	int getExpUserCount(Long expId);
	
}
