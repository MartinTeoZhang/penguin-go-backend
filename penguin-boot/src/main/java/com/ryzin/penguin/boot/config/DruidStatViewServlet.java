package com.ryzin.penguin.boot.config;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;

import com.alibaba.druid.support.http.StatViewServlet;

// 如果不使用DruidConfig的Servlet和Filter配置， 也可以通过下述监控器配置实现：
//
// 配置Druid监控视图（相当于ServletRegistrationBean）

/**   
 * druid监控视图配置   
 */    
//@WebServlet(urlPatterns = "/druid/*", initParams={    
//    @WebInitParam(name="allow",value="192.168.6.195"),	// IP白名单 (没有配置或者为空，则允许所有访问)    
//    @WebInitParam(name="deny",value="192.168.6.73"),	// IP黑名单 (存在共同时，deny优先于allow)    
//    @WebInitParam(name="loginUsername",value="admin"),	// 用户名    
//    @WebInitParam(name="loginPassword",value="admin"),	// 密码    
//    @WebInitParam(name="resetEnable",value="true")	// 禁用HTML页面上的“Reset All”功能    
//})   
public class DruidStatViewServlet extends StatViewServlet {  
    private static final long serialVersionUID = 7359758657306626394L;  
}  
