package com.ryzin.penguin.admin.config;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.Filter;

import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;

import com.ryzin.penguin.admin.oauth2.OAuth2Filter;
import com.ryzin.penguin.admin.oauth2.OAuth2Realm;

/**
 * Shiro 配置
 * 添加配置类，注入自定义的认证过滤器（OAuth2Filter）和认证器（OAuth2Realm），并添加请求路径拦截配置。
 * @author 
 * @date 
 */
@Configuration
public class ShiroConfig {
	
    @Bean
	public ShiroFilterFactoryBean shirFilter(SecurityManager securityManager) {
		ShiroFilterFactoryBean shiroFilter = new ShiroFilterFactoryBean();
		shiroFilter.setSecurityManager(securityManager);
		// 自定义 OAuth2Filter 过滤器，替代默认的过滤器
		Map<String, Filter> filters = new HashMap<>();
		filters.put("oauth2", new OAuth2Filter());
		shiroFilter.setFilters(filters);
		// 访问路径拦截配置，"anon"表示无需验证，未登录也可访问
		Map<String, String> filterMap = new LinkedHashMap<>();
		filterMap.put("/webjars/**", "anon");
		// 查看SQL监控（druid）
		filterMap.put("/druid/**", "anon");
		// 首页和登录页面
		filterMap.put("/", "anon");
		filterMap.put("/login", "anon"); 
		// swagger
		filterMap.put("/swagger-ui.html", "anon");
        filterMap.put("/swagger-resources", "anon");
        filterMap.put("/v2/api-docs", "anon");
        filterMap.put("/webjars/springfox-swagger-ui/**", "anon");
        // 验证码
        filterMap.put("/captcha.jpg**", "anon");
        // 服务监控
        filterMap.put("/actuator/**", "anon"); // 使监控信息获取接口无需进行登录认证
        // 其他所有路径交给OAuth2Filter处理
        
		filterMap.put("/**", "oauth2");
//		filterMap.put("/**", "anon");
//		加了Shiro之后每次调试接口都需要传递token，对我们开发来说也是麻烦，如有需要可以通过以下方法取消验证。
//		在 ShiroConfig 配置类中，把接口路径映射到 anon 过滤器，调试时就不需要 token 验证了
		//将 filterMap.put("/**", "oauth2"); 改成 filterMap.put("/**", "anon");
		
		shiroFilter.setFilterChainDefinitionMap(filterMap);
		return shiroFilter;
	}

    @Bean
	public SecurityManager securityManager(){
	    DefaultWebSecurityManager securityManager =  new DefaultWebSecurityManager();
	    // 注入 Realm 实现类，实现自己的登录逻辑
	    securityManager.setRealm(getShiroRealm());
	    return securityManager;
	}
    
    @Bean
    public Realm getShiroRealm(){
    	OAuth2Realm myShiroRealm = new OAuth2Realm();
        return myShiroRealm;
    }

    /**
     * Shiro生命周期处理器
     */
    @Bean
    public LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
        return new LifecycleBeanPostProcessor();
    }
    
    /**
          * 开启Shiro的注解(如@RequiresRoles,@RequiresPermissions),需借助SpringAOP扫描使用Shiro注解的类,并在必要时进行安全逻辑验证
          * 配置以下两个bean(DefaultAdvisorAutoProxyCreator(可选)和AuthorizationAttributeSourceAdvisor)即可实现此功能
     */
    @Bean
    @DependsOn({"lifecycleBeanPostProcessor"})
    public DefaultAdvisorAutoProxyCreator advisorAutoProxyCreator() {
        DefaultAdvisorAutoProxyCreator advisorAutoProxyCreator = new DefaultAdvisorAutoProxyCreator();
        advisorAutoProxyCreator.setProxyTargetClass(true);
        return advisorAutoProxyCreator;
    }
    
    /**
     * Shiro总共有5个权限注解：RequiresRoles、RequiresPermissions、RequiresAuthentication、RequiresUser、RequiresGuest
     * Shiro通过AOP方式拦截被权限注解的类或方法，然后匹配权限注解值和用户权限列表进行验证
     */
    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor() {
        AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
        authorizationAttributeSourceAdvisor.setSecurityManager(securityManager());
        return authorizationAttributeSourceAdvisor;
    }
}
