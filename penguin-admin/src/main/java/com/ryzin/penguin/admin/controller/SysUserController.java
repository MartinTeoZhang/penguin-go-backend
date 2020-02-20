package com.ryzin.penguin.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ryzin.penguin.admin.constants.SysConstants;
import com.ryzin.penguin.admin.model.SysUser;
import com.ryzin.penguin.admin.service.SysUserService;
import com.ryzin.penguin.admin.util.PasswordUtils;
import com.ryzin.penguin.admin.util.ShiroUtils;
import com.ryzin.penguin.core.http.HttpResult;
import com.ryzin.penguin.core.page.PageRequest;

// SysUserController restful 接口，返回JSON数据格式，提供外部调用


@RestController
@RequestMapping("user")
public class SysUserController {

	@Autowired
	private SysUserService sysUserService;
	
	
	@PostMapping(value="/save")
	public HttpResult save(@RequestBody SysUser record) {
		SysUser user = sysUserService.findById(record.getId());
		if(user == null) {
			return HttpResult.error("用户信息存在!");
		}
		if(SysConstants.ADMIN.equalsIgnoreCase(user.getName())) {
			return HttpResult.error("超级管理员不允许修改!");
		}
		if(record.getPassword() != null) {
			if(!record.getPassword().equals(user.getPassword())) {
				String salt = PasswordUtils.getSalt();
				String password = PasswordUtils.encrypte(record.getPassword(), salt);
				record.setSalt(salt);
				record.setPassword(password);
			}
		}
		return HttpResult.ok(sysUserService.save(record));
	}

	@PostMapping(value="/delete")
	public HttpResult delete(@RequestBody List<SysUser> records) {
		for(SysUser record:records) {
			SysUser sysUser = sysUserService.findById(record.getId());
			if(sysUser != null && SysConstants.ADMIN.equalsIgnoreCase(sysUser.getName())) {
				return HttpResult.error("超级管理员不允许删除!");
			}
		}
		return HttpResult.ok(sysUserService.delete(records));
	}

	@GetMapping(value="/findByName")
	public HttpResult findByUserName(@RequestParam String name) {
		return HttpResult.ok(sysUserService.findByName(name));
	}
	
	@GetMapping(value="/findPermissions")
	public HttpResult findPermissions(@RequestParam String name) {
		return HttpResult.ok(sysUserService.findPermissions(name));
	}
	
	@PostMapping(value="/findPage")
	public HttpResult findPage(@RequestBody PageRequest pageRequest) {
		return HttpResult.ok(sysUserService.findPage(pageRequest));
	}
	
	/**
	 * 修改登录用户密码
	 */
	@GetMapping("/updatePassword")
	public HttpResult updatePassword(@RequestParam String password, @RequestParam String newPassword) {
		SysUser user = ShiroUtils.getUser();
		if(user != null && password != null && newPassword != null) {
			String oldPassword = PasswordUtils.encrypte(password, user.getSalt());
			if(!oldPassword.equals(user.getPassword())) {
				return HttpResult.error("原密码不正确");
			}
			user.setPassword(PasswordUtils.encrypte(newPassword, user.getSalt()));
			HttpResult.ok(sysUserService.save(user));
		}
		return HttpResult.error();
	}
}