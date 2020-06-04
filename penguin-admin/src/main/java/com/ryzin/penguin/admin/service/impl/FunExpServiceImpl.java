package com.ryzin.penguin.admin.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ryzin.penguin.core.page.ColumnFilter;
import com.ryzin.penguin.core.page.MybatisPageHelper;
import com.ryzin.penguin.core.page.PageRequest;
import com.ryzin.penguin.core.page.PageResult;

import com.ryzin.penguin.admin.model.FunExp;
import com.ryzin.penguin.admin.model.FunExpUser;
import com.ryzin.penguin.admin.model.SysUser;
import com.ryzin.penguin.admin.model.SysUserRole;
import com.ryzin.penguin.admin.dao.FunExpMapper;
import com.ryzin.penguin.admin.dao.FunExpUserMapper;
import com.ryzin.penguin.admin.dao.SysRoleMapper;
import com.ryzin.penguin.admin.dao.SysUserMapper;
import com.ryzin.penguin.admin.dao.SysUserRoleMapper;
import com.ryzin.penguin.admin.service.FunExpService;

/**
 * ---------------------------
 *  (FunExpServiceImpl)         
 * ---------------------------
 * 作者：  kitty-generator
 * 时间：  2020-06-01 15:26:15
 * 说明：  我是由代码生成器生生成的
 * ---------------------------
 */
@Service
public class FunExpServiceImpl implements FunExpService {

	@Autowired
	private FunExpMapper funExpMapper;
	
	@Autowired
	private FunExpUserMapper funExpUserMapper;
	
	@Autowired
	private SysUserRoleMapper sysUserRoleMapper;
	
	@Autowired
	private SysUserMapper sysUserMapper;

	@Override
	public int save(FunExp record) {
		if(record.getId() == null || record.getId() == 0) {
			return funExpMapper.add(record);
		}
		return funExpMapper.update(record);
	}

	@Override
	public int delete(FunExp record) {
		return funExpMapper.delete(record.getId());
	}

	@Override
	public int delete(List<FunExp> records) {
		for(FunExp record:records) {
			delete(record);
		}
		return 1;
	}

	@Override
	public FunExp findById(Long id) {
		return funExpMapper.findById(id);
	}

	@Override
	public PageResult findPage(PageRequest pageRequest) {
		PageResult pageResult = null;
		String name = getColumnFilterValue(pageRequest, "name");
		if(name != null && name.length() > 0) {
			System.out.println("------------1,name="+name);
			SysUser user = sysUserMapper.findByName(name);
			List<SysUserRole> roles = sysUserRoleMapper.findUserRoles(user.getId());
			//角色为被试
			if(roles.get(0).getRoleId() == 9) {
				System.out.println("------------2");
				pageResult = MybatisPageHelper.findPage(pageRequest, funExpMapper, "findPageBySubjectUserId", user.getId());
			}else if(roles.get(0).getRoleId() == 10) {
				System.out.println("------------3");
				//角色为主试
				pageResult = MybatisPageHelper.findPage(pageRequest, funExpMapper, "findPageByExperimenterUserId", user.getId());
			}else {
				System.out.println("------------4");
				pageResult = MybatisPageHelper.findPage(pageRequest, funExpMapper);
			}
		}else {
			System.out.println("------------5");
			pageResult = MybatisPageHelper.findPage(pageRequest, funExpMapper);
		}
		return pageResult;
	}
	
	/**
	 *  获取过滤字段的值
	 * @param filterName
	 * @return
	 */
	public String getColumnFilterValue(PageRequest pageRequest, String filterName) {
		String value = null;
		ColumnFilter columnFilter = pageRequest.getColumnFilter(filterName);
		
		if(columnFilter != null) {
			value = columnFilter.getValue();
		}
		return value;
	}
	
	
	
}
