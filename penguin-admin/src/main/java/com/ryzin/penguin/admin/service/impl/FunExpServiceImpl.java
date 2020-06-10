package com.ryzin.penguin.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ryzin.penguin.core.page.MybatisPageHelper;
import com.ryzin.penguin.core.page.PageRequest;
import com.ryzin.penguin.core.page.PageResult;
import com.ryzin.penguin.core.page.ColumnFilter;

import com.ryzin.penguin.admin.model.FunExp;
import com.ryzin.penguin.admin.model.FunExpUser;

import com.ryzin.penguin.admin.dao.FunExpMapper;
import com.ryzin.penguin.admin.dao.FunExpUserMapper;
import com.ryzin.penguin.admin.dao.SysUserMapper;

import com.ryzin.penguin.admin.service.FunExpService;


@Service
public class FunExpServiceImpl implements FunExpService {

	@Autowired
	private FunExpMapper funExpMapper;
	@Autowired
	private FunExpUserMapper funExpUserMapper;
	@Autowired
	private SysUserMapper sysUserMapper;
	
	
	@Override
	public int save(FunExp record) {
		if(record.getId() == null || record.getId() == 0) {
			return funExpMapper.insert(record);
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
		String name = getColumnFilterValue(pageRequest, "name");
		String status = getColumnFilterValue(pageRequest, "status");
		if(name != null) {
			return MybatisPageHelper.findPage(pageRequest, funExpMapper, "findPageByName", name);
		}else{
			if(status != null) {
				Integer sta = Integer.valueOf(status);
				return MybatisPageHelper.findPage(pageRequest, funExpMapper, "findPageByStatus", sta);
			}else{
				return MybatisPageHelper.findPage(pageRequest, funExpMapper);
			}
		}
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
	
	@Override
	public List<FunExpUser> findExpUsers(Long expId) {
		return funExpUserMapper.findExpUsers(expId);
	}
	
	@Transactional
	@Override
	public int saveExpUser(FunExpUser record) {
		if(record.getId() == null || record.getId() == 0) {
			return funExpUserMapper.insertSelective(record);
		}
		return funExpUserMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int getExpUserCount(Long expId) {
		return funExpUserMapper.getExpUserCount(expId);
	}
}
