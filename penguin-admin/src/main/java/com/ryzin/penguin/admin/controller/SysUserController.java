package com.ryzin.penguin.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ryzin.penguin.admin.service.SysUserService;

// SysUserController restful 接口，返回JSON数据格式，提供外部调用

@RestController
@RequestMapping("user")
public class SysUserController {

	@Autowired
	private SysUserService sysUserService;
	
	@GetMapping(value="/findByUserId")
	public Object findByUserId(@RequestParam Long userId) {
		return sysUserService.findByUserId(userId);
	}
	
	@GetMapping(value="/findAll")
	public Object findAll() {
		return sysUserService.findAll();
	}
}