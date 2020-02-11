package com.ryzin.penguin.admin.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ryzin.penguin.admin.constants.SysConstants;
import com.ryzin.penguin.admin.dao.SysMenuMapper;
import com.ryzin.penguin.admin.model.SysMenu;
import com.ryzin.penguin.admin.service.SysMenuService;
import com.ryzin.penguin.core.page.MybatisPageHelper;
import com.ryzin.penguin.core.page.PageRequest;
import com.ryzin.penguin.core.page.PageResult;


@Service
public class SysMenuServiceImpl implements SysMenuService {

	@Autowired
	private SysMenuMapper sysMenuMapper;
	
	
	@Override
	public int save(SysMenu record) {
		return sysMenuMapper.insertSelective(record);
	}

	@Override
	public int update(SysMenu record) {
		return sysMenuMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int delete(SysMenu record) {
		return sysMenuMapper.deleteByPrimaryKey(record.getMenuId());
	}

	@Override
	public int delete(List<SysMenu> records) {
		for(SysMenu record:records) {
			delete(record);
		}
		return 1;
	}

	@Override
	public SysMenu findById(Long id) {
		return sysMenuMapper.selectByPrimaryKey(id);
	}
	
	@Override
	public PageResult findPage(PageRequest pageRequest) {
		return MybatisPageHelper.findPage(pageRequest, sysMenuMapper);
	}

	@Override
	public List<SysMenu> findTree(String userName) {
		List<SysMenu> sysMenus = new ArrayList<>();
		List<SysMenu> menus = findByUser(userName);
		for (SysMenu menu : menus) {
			if (menu.getParentId() == null || menu.getParentId() == 0) {
				sysMenus.add(menu);
			}
		}
		findChildren(sysMenus, menus);
		return sysMenus;
	}

	@Override
	public List<SysMenu> findByUser(String userName) {
		if(userName == null || SysConstants.ADMIN.equalsIgnoreCase(userName)) {
			return sysMenuMapper.findAll();
		}
		return sysMenuMapper.findByUserName(userName);
	}

	private void findChildren(List<SysMenu> SysMenus, List<SysMenu> menus) {
		for (SysMenu SysMenu : SysMenus) {
			List<SysMenu> children = new ArrayList<>();
			for (SysMenu menu : menus) {
				if (SysMenu.getMenuId() != null && SysMenu.getMenuId().equals(menu.getParentId())) {
					children.add(menu);
				}
			}
			SysMenu.setChildren(children);
			findChildren(children, menus);
		}
	}
	
}
