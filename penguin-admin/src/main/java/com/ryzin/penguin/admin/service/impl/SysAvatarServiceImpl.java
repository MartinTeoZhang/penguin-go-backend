package com.ryzin.penguin.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ryzin.penguin.core.page.MybatisPageHelper;
import com.ryzin.penguin.core.page.PageRequest;
import com.ryzin.penguin.core.page.PageResult;

import com.ryzin.penguin.admin.model.SysAvatar;
import com.ryzin.penguin.admin.dao.SysAvatarMapper;
import com.ryzin.penguin.admin.service.SysAvatarService;


@Service
public class SysAvatarServiceImpl implements SysAvatarService {

	@Autowired
	private SysAvatarMapper sysAvatarMapper;

	@Override
	public int save(SysAvatar record) {
		if(record.getId() == null || record.getId() == 0) {
			return sysAvatarMapper.add(record);
		}
		return sysAvatarMapper.update(record);
	}

	@Override
	public int delete(SysAvatar record) {
		return sysAvatarMapper.delete(record.getId());
	}

	@Override
	public int delete(List<SysAvatar> records) {
		for(SysAvatar record:records) {
			delete(record);
		}
		return 1;
	}

	@Override
	public SysAvatar findById(Long id) {
		return sysAvatarMapper.findById(id);
	}

	@Override
	public PageResult findPage(PageRequest pageRequest) {
		return MybatisPageHelper.findPage(pageRequest, sysAvatarMapper);
	}
	
	@Override
	public SysAvatar findByUserId(Long userId) {
		return sysAvatarMapper.findByUserId(userId);
	}
	
	@Override
	public int updateByUserId(SysAvatar record){
		return sysAvatarMapper.update(record);
	}
	
}
