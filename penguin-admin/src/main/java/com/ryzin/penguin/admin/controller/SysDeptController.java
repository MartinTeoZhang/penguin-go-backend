package com.ryzin.penguin.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ryzin.penguin.admin.model.SysDept;
import com.ryzin.penguin.admin.service.SysDeptService;
import com.ryzin.penguin.core.page.PageRequest;
import com.ryzin.penguin.core.page.PageResult;

@RestController
@RequestMapping("dept")
public class SysDeptController {

	@Autowired
	private SysDeptService sysDeptService;
	
	@PostMapping(value="/save")
	public int save(SysDept record) {
		return sysDeptService.save(record);
	}

	@PostMapping(value="/update")
	public int update(SysDept record) {
		return sysDeptService.update(record);
	}

	@PostMapping(value="/delete")
	public int delete(SysDept record) {
		return sysDeptService.delete(record);
	}

	@PostMapping(value="/delete")
	public int delete(List<SysDept> records) {
		return sysDeptService.delete(records);
	}

	@GetMapping(value="/findById")
	public SysDept findById(Long id) {
		return sysDeptService.findById(id);
	}

	@PostMapping(value="/update")
	public PageResult findPage(PageRequest pageRequest) {
		return sysDeptService.findPage(pageRequest);
	}
}