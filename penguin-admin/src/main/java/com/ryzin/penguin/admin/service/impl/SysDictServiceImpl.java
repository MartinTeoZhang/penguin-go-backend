package com.ryzin.penguin.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ryzin.penguin.admin.dao.SysDictMapper;
import com.ryzin.penguin.admin.model.SysDict;
import com.ryzin.penguin.admin.service.SysDictService;
import com.ryzin.penguin.core.page.ColumnFilter;
import com.ryzin.penguin.core.page.MybatisPageHelper;
import com.ryzin.penguin.core.page.PageRequest;
import com.ryzin.penguin.core.page.PageResult;

@Service
public class SysDictServiceImpl  implements SysDictService {

	@Autowired
	private SysDictMapper sysDictMapper;

	@Override
	public int save(SysDict record) {
		if(record.getId() == null || record.getId() == 0) {
			return sysDictMapper.insertSelective(record);
		}
		return sysDictMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int delete(SysDict record) {
		return sysDictMapper.deleteByPrimaryKey(record.getId());
	}

	@Override
	public int delete(List<SysDict> records) {
		for(SysDict record:records) {
			delete(record);
		}
		return 1;
	}

	@Override
	public SysDict findById(Long id) {
		return sysDictMapper.selectByPrimaryKey(id);
	}

	@Override
	public PageResult findPage(PageRequest pageRequest) {
		ColumnFilter columnFilter = pageRequest.getColumnFilter("label");
		if(columnFilter != null) {
			return MybatisPageHelper.findPage(pageRequest, sysDictMapper, "findPageByLabel", columnFilter.getValue());
		}
		return MybatisPageHelper.findPage(pageRequest, sysDictMapper);
	}
	
	@Override
	public List<SysDict> findByLabel(String label) {
		return sysDictMapper.findByLabel(label);
	}
}
