package com.ryzin.penguin.admin.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.util.ClassUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.ryzin.penguin.core.http.HttpResult;
import com.ryzin.penguin.core.page.PageRequest;

import com.ryzin.penguin.admin.model.SysAvatar;
import com.ryzin.penguin.admin.model.SysUser;
import com.ryzin.penguin.admin.service.SysAvatarService;
import com.ryzin.penguin.admin.service.SysUserService;


@RestController
@RequestMapping("sysAvatar")
public class SysAvatarController {
	
	//被上传文件的实际保存路径，在application.yml设置
	@Value("${file-save-path}")
    private String fileSavePath;

	@Autowired
	private SysAvatarService sysAvatarService;
	
	@Autowired
	private SysUserService sysUserService;

	//用户上传头像
	@PreAuthorize("hasAuthority('sys:user:view') AND hasAuthority('sys:profile:editavatar')")
	@PostMapping("/upload") // 等价于 @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public HttpResult upload(HttpServletRequest req, @RequestParam("myphoto") MultipartFile file,  @RequestParam("id") Long id) {//1. 接受上传的文件  @RequestParam("file") MultipartFile file
        try {
            //2.根据时间戳创建新的文件名，这样即便是第二次上传相同名称的文件，也不会把第一次的文件覆盖了
            String fileName = System.currentTimeMillis() + file.getOriginalFilename();
            //3.通过req.getServletContext().getRealPath("") 获取当前项目的真实路径，然后拼接前面的文件名
            //String destFileName = req.getServletContext().getRealPath("") + "uploaded" + File.separator + fileName;

            //图片保存路径
            String savePath = fileSavePath + File.separator + fileName;
            // 访问路径=静态资源路径+文件目录路径
            String visitPath ="images/" + fileName;
            //4.第一次运行的时候，这个文件所在的目录往往是不存在的，这里需要创建一下目录（创建到了webapp下uploaded文件夹下）
            File destFile = new File(savePath);
            destFile.getParentFile().mkdirs();
            //5.把浏览器上传的文件复制到希望的位置
            file.transferTo(destFile);
            
            SysAvatar record = new SysAvatar();
            record.setUserId(id);
            record.setPath(visitPath);
            //存储到数据库
            SysAvatar existRecord = sysAvatarService.findByUserId(id);
            if(existRecord != null) {
            	//将查询到的已存在id给update操作
            	record.setId(existRecord.getId());
            	sysAvatarService.updateByUserId(record);
            }else {
            	sysAvatarService.save(record);
            }
            
            return HttpResult.ok(record);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return HttpResult.ok("上传失败," + e.getMessage());
        } catch (IOException e) {
            e.printStackTrace();
            return HttpResult.ok("上传失败," + e.getMessage());
        }

        
    }
	
	//根据userid查询头像
	@PreAuthorize("hasAuthority('sys:profile:viewavatar')")
	@GetMapping(value="/getAvatarByUserId")
	public HttpResult getAvatarByUserId(@RequestParam Long id) {
		SysAvatar record = sysAvatarService.findByUserId(id);
		if(record != null) {
			//该账号存在头像
			return HttpResult.ok(record);
		}else {
			//该账号不存在头像
			return HttpResult.ok("no record");
		}
	}
	
	//根据用户名查询头像
	@PreAuthorize("hasAuthority('sys:user:view') AND hasAuthority('sys:profile:viewavatar')")
	@GetMapping(value="/getAvatarByUserName")
	public HttpResult getAvatarByUserName(@RequestParam String name) {
		SysUser user = sysUserService.findByName(name);
		SysAvatar record = sysAvatarService.findByUserId(user.getId());
		if(record != null) {
			//该账号存在头像
			return HttpResult.ok(record);
		}else {
			//该账号不存在头像
			return HttpResult.ok("no record");
		}
	}
	
	
	/**
	 * 保存用户头像存储
	 * @param record
	 * @return
	 */	
	@PostMapping(value="/save")
	public HttpResult save(@RequestBody SysAvatar record) {
		return HttpResult.ok(sysAvatarService.save(record));
	}

    /**
     * 删除用户头像存储
     * @param records
     * @return
     */
	@PostMapping(value="/delete")
	public HttpResult delete(@RequestBody List<SysAvatar> records) {
		return HttpResult.ok(sysAvatarService.delete(records));
	}

    /**
     * 基础分页查询
     * @param pageRequest
     * @return
     */    
	@PostMapping(value="/findPage")
	public HttpResult findPage(@RequestBody PageRequest pageRequest) {
		return HttpResult.ok(sysAvatarService.findPage(pageRequest));
	}
	
    /**
     * 根据主键查询
     * @param id
     * @return
     */ 	
	@GetMapping(value="/findById")
	public HttpResult findById(@RequestParam Long id) {
		return HttpResult.ok(sysAvatarService.findById(id));
	}
	
	
	
}
