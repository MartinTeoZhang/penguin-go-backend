package com.ryzin.penguin.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ryzin.penguin.admin.dao.SysUserMapper;
import com.ryzin.penguin.admin.model.SysUser;
import com.ryzin.penguin.admin.service.SysUserService;
import com.ryzin.penguin.core.page.PageRequest;
import com.ryzin.penguin.core.page.PageResult;
import com.ryzin.penguin.core.page.PageUtils;

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
		return PageUtils.getPageResult(pageRequest, getPageInfo(pageRequest));
	}
	
	/**
	 * 调用分页插件完成分页
	 * @param pageQuery
	 * @return
	 */
	private PageInfo<SysUser> getPageInfo(PageRequest pageRequest) {
		int pageNum = pageRequest.getPageNum();
		int pageSize = pageRequest.getPageSize();
		PageHelper.startPage(pageNum, pageSize);
		List<SysUser> sysMenus = sysUserMapper.findPage();
		return new PageInfo<SysUser>(sysMenus);
	}

	@Override
	public List<SysUser> findAll() {
		return sysUserMapper.findAll();
	}
}
