package com.ryzin.penguin.admin.service;

import com.ryzin.penguin.admin.model.SysAvatar;
import com.ryzin.penguin.core.service.CurdService;


public interface SysAvatarService extends CurdService<SysAvatar> {
	
	//根据userId查询
	SysAvatar findByUserId(Long userId);
	
	//根据userId更新
	int updateByUserId(SysAvatar record);

}
