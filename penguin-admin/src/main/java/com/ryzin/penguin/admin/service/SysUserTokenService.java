package com.ryzin.penguin.admin.service;

import com.ryzin.penguin.admin.model.SysUserToken;
import com.ryzin.penguin.core.service.CurdService;

/**
 * 用户Token管理
 * @author 
 * @date 
 */
public interface SysUserTokenService extends CurdService<SysUserToken> {

	/**
	 * 根据用户id查找
	 * @param userId
	 * @return
	 */
	SysUserToken findByUserId(Long userId);

	/**
	 * 根据token查找
	 * @param token
	 * @return
	 */
	SysUserToken findByToken(String token);
	
	/**
	 * 生成token
	 * @param userId
	 * @return
	 */
	SysUserToken createToken(long userId);

}
