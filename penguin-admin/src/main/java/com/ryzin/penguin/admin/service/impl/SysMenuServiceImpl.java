package com.ryzin.penguin.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ryzin.penguin.admin.dao.SysMenuMapper;
import com.ryzin.penguin.admin.model.SysMenu;
import com.ryzin.penguin.admin.page.PageRequest;
import com.ryzin.penguin.admin.page.PageResult;
import com.ryzin.penguin.admin.page.PageUtils;
import com.ryzin.penguin.admin.service.SysMenuService;

@Service
public class SysMenuServiceImpl implements SysMenuService {

	@Autowired
	private SysMenuMapper sysMenuMapper;
	
	@Override
	public PageResult findPage(PageRequest pageRequest) {
		return PageUtils.getPageResult(pageRequest, getPageInfo(pageRequest));
	}
	
	/**
	 * 调用分页插件完成分页
	 * @param pageQuery
	 * @return
	 */
	private PageInfo<SysMenu> getPageInfo(PageRequest pageRequest) {
		int pageNum = pageRequest.getPageNum();
		int pageSize = pageRequest.getPageSize();
		PageHelper.startPage(pageNum, pageSize);
		List<SysMenu> sysMenus = sysMenuMapper.selectPage();
		return new PageInfo<SysMenu>(sysMenus);
	}

}
