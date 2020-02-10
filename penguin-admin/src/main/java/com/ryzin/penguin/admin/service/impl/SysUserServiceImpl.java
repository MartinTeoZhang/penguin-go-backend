package com.ryzin.penguin.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ryzin.penguin.admin.dao.SysUserMapper;
import com.ryzin.penguin.admin.model.SysUser;
import com.ryzin.penguin.admin.service.SysUserService;
import com.ryzin.penguin.core.page.MybatisPageHelper;
import com.ryzin.penguin.core.page.PageRequest;
import com.ryzin.penguin.core.page.PageResult;


// SysUserServiceImpl 实现类，调用 SysUserMapper 方法完成查询操作
@Service
public class SysUserServiceImpl implements SysUserService {
	
	@Autowired
	private SysUserMapper sysUserMapper;
	
	@Override
	public int save(SysUser record) {
		return sysUserMapper.insertSelective(record);
	}

	@Override
	public int update(SysUser record) {
		return sysUserMapper.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public int delete(SysUser record) {
		return sysUserMapper.deleteByPrimaryKey(record.getUserId());
	}

	@Override
	public int delete(List<SysUser> records) {
		for(SysUser record:records) {
			delete(record);
		}
		return 1;
	}

	@Override
	public SysUser findById(Long id) {
		return sysUserMapper.selectByPrimaryKey(id);
	}


	@Override
	public PageResult findPage(PageRequest pageRequest) {
		return MybatisPageHelper.findPage(pageRequest, sysUserMapper);
	}

}
