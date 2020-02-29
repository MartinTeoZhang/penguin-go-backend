package com.ryzin.penguin.admin.config;

import com.alibaba.druid.support.http.WebStatFilter;

// 如果不使用DruidConfig的Servlet和Filter配置， 也可以通过下述监控器配置实现：
//
// 配置监控拦截器（相当于FilterRegistrationBean）

/**   
 * 配置监控拦截器, druid监控拦截器   
 */    
//@WebFilter(filterName="druidWebStatFilter",    
//urlPatterns="/*",    
//initParams={    
//    @WebInitParam(name="exclusions",value="*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*"), // 忽略资源    
//})   
public class DruidStatFilter extends WebStatFilter {  

} 