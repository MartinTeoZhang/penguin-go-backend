package com.ryzin.penguin.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ryzin.penguin.admin.dao.SysUserMapper;
import com.ryzin.penguin.admin.model.SysUser;
import com.ryzin.penguin.admin.service.SysUserService;

// SysUserServiceImpl 实现类，调用 SysUserMapper 方法完成查询操作
@Service
public class SysUserServiceImpl implements SysUserService {
	
	@Autowired
	private SysUserMapper sysUserMapper;
	
	@Override
	public SysUser findByUserId(Long userId) {
		return sysUserMapper.selectByPrimaryKey(userId);
	}

	@Override
	public List<SysUser> findAll() {
		return sysUserMapper.selectAll();
	}
}
