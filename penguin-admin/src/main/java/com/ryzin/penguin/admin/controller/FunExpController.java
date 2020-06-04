package com.ryzin.penguin.admin.controller;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ryzin.penguin.core.http.HttpResult;
import com.ryzin.penguin.core.page.PageRequest;

import net.sf.json.JSONObject;

import com.ryzin.penguin.admin.model.FunExp;
import com.ryzin.penguin.admin.model.FunExpUser;
import com.ryzin.penguin.admin.model.SysUser;
import com.ryzin.penguin.admin.service.FunExpService;
import com.ryzin.penguin.admin.service.FunExpUserService;
import com.ryzin.penguin.admin.service.FunUserExpService;
import com.ryzin.penguin.admin.service.SysUserService;


/**
 * ---------------------------
 *  (FunExpController)         
 * ---------------------------
 * 作者：  kitty-generator
 * 时间：  2020-06-01 15:26:15
 * 说明：  我是由代码生成器生生成的
 * ---------------------------
 */
@RestController
@RequestMapping("funExp")
public class FunExpController {

	@Autowired
	private FunExpService funExpService;
	
	@Autowired
	private FunExpUserService funExpUserService;
	
	@Autowired
	private SysUserService sysUserService;
	
	@Autowired
	private FunUserExpService funUserExpService;
	

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
     * 加载统计数据，包括总实验次数、总报酬、总时长
     * @param id
     * @return
     */ 	
	@PreAuthorize("hasAuthority('sys:user:view')")
	@GetMapping(value="/gatExpStatData")
	
	public HttpResult gatExpStatData(@RequestParam Long id) {
		SysUser user = sysUserService.findById(id);
		user.setUserRoles(sysUserService.findUserRoles(id));
		Map<String,Long> resultMap = new HashMap<String, Long>(); 
		if(user.getUserRoles().get(0).getRoleId() == 9) {
			//角色为被试
			List<FunExpUser> attendRecords = new LinkedList<>();
			List<FunExp> expRecords = new LinkedList<>();
			//查询被试的实验
			attendRecords = funExpUserService.findExpUserByUserId(id);
			//实验总次数
			long expCount = attendRecords.size();
			if(expCount <= 0) {
				resultMap.put("expCount", (long)0);
				resultMap.put("timeCount", (long)0);
				resultMap.put("paymentCount", (long)0);
				return HttpResult.ok(resultMap);
			}
			//所有实验总时间
			long timeCount = 0;
			
			long paymentCount = 0;
			for(FunExpUser record : attendRecords) {
				FunExp tempExp = funExpService.findById(record.getExpId());
				expRecords.add(tempExp);
				timeCount += tempExp.getDuration();
			}
		           
			for(FunExp exp : expRecords) {
				String rawJson = exp.getPayment().replaceAll("\\\\", "");
				JSONObject strJson = JSONObject.fromObject(rawJson);
				paymentCount += Long.valueOf(String.valueOf(strJson.get("paymentMax"))).longValue();
			}
			
			resultMap.put("expCount", expCount);
			resultMap.put("timeCount", timeCount);
			resultMap.put("paymentCount", paymentCount);
			
		}else if(user.getUserRoles().get(0).getRoleId() == 10) {
			//角色为主试
			List<FunExpUser> attendRecords = new LinkedList<>();
			List<FunExp> expRecords = new LinkedList<>();
			//查询主试的实验
			attendRecords = funUserExpService.findUserExpByUserId(id);
			//实验总次数
			long expCount = attendRecords.size();
			if(expCount <= 0) {
				resultMap.put("expCount", (long)0);
				resultMap.put("timeCount", (long)0);
				resultMap.put("paymentCount", (long)0);
				return HttpResult.ok(resultMap);
			}
			//所有实验总时间
			long timeCount = 0;
			
			long paymentCount = 0;
			for(FunExpUser record : attendRecords) {
				FunExp tempExp = funExpService.findById(record.getExpId());
				expRecords.add(tempExp);
				timeCount += tempExp.getDuration();
			}
		           
			for(FunExp exp : expRecords) {
				String rawJson = exp.getPayment().replaceAll("\\\\", "");
				JSONObject strJson = JSONObject.fromObject(rawJson);
				paymentCount += Long.valueOf(String.valueOf(strJson.get("paymentMax"))).longValue();
			}
			
			resultMap.put("expCount", expCount);
			resultMap.put("timeCount", timeCount);
			resultMap.put("paymentCount", paymentCount);
		}
		return HttpResult.ok(resultMap);
	}
	
}
