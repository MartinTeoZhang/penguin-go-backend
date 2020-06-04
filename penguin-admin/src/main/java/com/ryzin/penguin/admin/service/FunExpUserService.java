package com.ryzin.penguin.admin.service;

import java.util.List;

import com.ryzin.penguin.admin.model.FunExpUser;
import com.ryzin.penguin.core.service.CurdService;

/**
 * ---------------------------
 *  (FunExpUserService)         
 * ---------------------------
 * 作者：  kitty-generator
 * 时间：  2020-06-03 15:26:15
 * 说明：  我是由代码生成器生生成的
 * ---------------------------
 */
public interface FunExpUserService extends CurdService<FunExpUser> {
	
	List<FunExpUser> findExpUserByUserId(long id);
}
