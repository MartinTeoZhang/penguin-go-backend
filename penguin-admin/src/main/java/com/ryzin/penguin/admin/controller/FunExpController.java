package com.ryzin.penguin.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ryzin.penguin.core.http.HttpResult;
import com.ryzin.penguin.core.page.PageRequest;

import com.ryzin.penguin.admin.model.FunExp;
import com.ryzin.penguin.admin.model.FunExpUser;

import com.ryzin.penguin.admin.service.FunExpService;


@RestController
@RequestMapping("exp")
public class FunExpController {

	@Autowired
	private FunExpService funExpService;
	
	/**
	 * 保存
	 * @param record
	 * @return
	 */	
	@PostMapping(value="/save")
	public HttpResult save(@RequestBody FunExp record) {
		return HttpResult.ok(funExpService.save(record));
	}

    /**
     * 删除
     * @param records
     * @return
     */
	@PostMapping(value="/delete")
	public HttpResult delete(@RequestBody List<FunExp> records) {
		return HttpResult.ok(funExpService.delete(records));
	}

    /**
     * 基础分页查询
     * @param pageRequest
     * @return
     */    
	@PostMapping(value="/findPage")
	public HttpResult findPage(@RequestBody PageRequest pageRequest) {
		return HttpResult.ok(funExpService.findPage(pageRequest));
	}
	
    /**
     * 根据主键查询
     * @param id
     * @return
     */ 	
	@GetMapping(value="/findById")
	public HttpResult findById(@RequestParam Long id) {
		return HttpResult.ok(funExpService.findById(id));
	}
	
	/**
	 * 查询实验用户集合
     * @param expId
	 * @return
	 */
	@GetMapping(value="/findExpUsers")
	public HttpResult findExpUsers(@RequestParam Long expId) {
		return HttpResult.ok(funExpService.findExpUsers(expId));
	}
	
	/**
	 * 保存实验用户
	 * @param records
	 * @return
	 */
	@PostMapping(value="/saveExpUser")
	public HttpResult saveExpUser(@RequestBody FunExpUser record) {
		return HttpResult.ok(funExpService.saveExpUser(record));
	}

    /**
     * 查询实验的报名人数
     * @param expId
     * @return
     */
    @GetMapping(value="/getExpUserCount")
    public HttpResult getExpUserCount(@RequestParam Long expId) {
        return HttpResult.ok(funExpService.getExpUserCount(expId));
    }
}
