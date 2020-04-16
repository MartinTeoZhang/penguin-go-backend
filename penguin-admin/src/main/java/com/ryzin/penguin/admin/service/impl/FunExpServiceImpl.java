package com.ryzin.penguin.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ryzin.penguin.core.page.MybatisPageHelper;
import com.ryzin.penguin.core.page.PageRequest;
import com.ryzin.penguin.core.page.PageResult;

import com.ryzin.penguin.admin.model.FunExp;
import com.ryzin.penguin.admin.dao.FunExpMapper;
import com.ryzin.penguin.admin.service.FunExpService;


@Service
public class FunExpServiceImpl implements FunExpService {

	@Autowired
	private FunExpMapper funExpMapper;

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
		return MybatisPageHelper.findPage(pageRequest, funExpMapper);
	}
	
}
