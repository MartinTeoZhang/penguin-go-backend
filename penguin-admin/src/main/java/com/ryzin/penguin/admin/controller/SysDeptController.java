package com.ryzin.penguin.admin.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ryzin.penguin.admin.model.SysDept;
import com.ryzin.penguin.admin.service.SysDeptService;
import com.ryzin.penguin.core.http.HttpResult;

/**
 * 机构控制器
 */
@RestController
@RequestMapping("dept")
public class SysDeptController {

	@Autowired
	private SysDeptService sysDeptService;
	
	
	@RequiresPermissions({"sys:dept:add", "sys:dept:edit"}) // 该权限标识是菜单表中对应的权限标识字段（perms）对应的值
	@PostMapping(value="/save")
	public HttpResult save(@RequestBody SysDept record) {
		return HttpResult.ok(sysDeptService.save(record));
	}

	@RequiresPermissions("sys:dept:delete")
	@PostMapping(value="/delete")
	public HttpResult delete(@RequestBody List<SysDept> records) {
		return HttpResult.ok(sysDeptService.delete(records));
	}

	@RequiresPermissions("sys:dept:view")
	@GetMapping(value="/findTree")
	public HttpResult findTree() {
		return HttpResult.ok(sysDeptService.findTree());
	}
	
}