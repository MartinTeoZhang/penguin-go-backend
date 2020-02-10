package com.ryzin.penguin.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ryzin.penguin.admin.model.SysMenu;
import com.ryzin.penguin.admin.service.SysMenuService;
import com.ryzin.penguin.core.page.PageRequest;
import com.ryzin.penguin.core.page.PageResult;

@RestController
@RequestMapping("menu")
public class SysMenuController {

	@Autowired
	private SysMenuService sysMenuService;
	
	@PostMapping(value="/save")
	public int save(SysMenu record) {
		return sysMenuService.save(record);
	}

	@PostMapping(value="/update")
	public int update(SysMenu record) {
		return sysMenuService.update(record);
	}

	@PostMapping(value="/delete")
	public int delete(SysMenu record) {
		return sysMenuService.delete(record);
	}

	@PostMapping(value="/delete")
	public int delete(List<SysMenu> records) {
		return sysMenuService.delete(records);
	}

	@GetMapping(value="/findById")
	public SysMenu findById(Long id) {
		return sysMenuService.findById(id);
	}

	@PostMapping(value="/update")
	public PageResult findPage(PageRequest pageRequest) {
		return sysMenuService.findPage(pageRequest);
	}
}
