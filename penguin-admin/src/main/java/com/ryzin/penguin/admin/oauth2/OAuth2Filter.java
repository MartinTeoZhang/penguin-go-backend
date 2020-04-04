package com.ryzin.penguin.admin.oauth2;

import java.io.IOException;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.web.filter.authc.AuthenticatingFilter;

import com.alibaba.fastjson.JSONObject;
import com.ryzin.penguin.common.utils.StringUtils;
import com.ryzin.penguin.core.http.HttpResult;
import com.ryzin.penguin.core.http.HttpStatus;


/**
 * Oauth2过滤器
 * 拦截除配置成不需认证的请求路径外的请求，都交由这个过滤器处理，负责接收前台带过来的token并封装成对象，如果请求没有携带token，则提示错误
 * @author 
 * @date 
 */
public class OAuth2Filter extends AuthenticatingFilter {

    @Override
    protected AuthenticationToken createToken(ServletRequest request, ServletResponse response) throws Exception {
        // 获取请求token
        String token = getRequestToken((HttpServletRequest) request);
        if(StringUtils.isBlank(token)){
            return null;
        }
        return new OAuth2Token(token);
    }

    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) {
        return false;
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
    	// 对于非简单的跨域请求，会事先发起一个OPTION类型的预检请求，只有预检请求成功才会发起真正的请求，
    	// 而这个预检请求是不带 token 的，这就意味着这个预检请求会被 shiro 过滤器拦截并在 token 校验失败
    	// 之后返回失败信息，从而不会再发起真正的请求。所以，可以让预检请求自动放行
    	
    	HttpServletRequest httpRequest = (HttpServletRequest) request;
    	if("OPTIONS".equals(httpRequest.getMethod())) {
    		// 如果是跨域中复杂请求的预检请求（OPTIONS类型），因为预检请求不带token, 所以不需要验证token
    		 return true;
    	}
    	
    	// 获取请求token，如果token不存在，直接返回401
    	String token = getRequestToken(httpRequest);
        if(StringUtils.isBlank(token)){
            HttpServletResponse httpResponse = (HttpServletResponse) response;
            httpResponse.setContentType("application/json; charset=utf-8");
            HttpResult result = HttpResult.error(HttpStatus.SC_UNAUTHORIZED, "invalid token");
            String json = JSONObject.toJSONString(result);
            httpResponse.getWriter().print(json);
            return false;
        }
        return executeLogin(request, response);
    }

    @Override
    protected boolean onLoginFailure(AuthenticationToken token, AuthenticationException e, ServletRequest request, ServletResponse response) {
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        httpResponse.setContentType("application/json; charset=utf-8");
        try {
            // 处理登录失败的异常
            Throwable throwable = e.getCause() == null ? e : e.getCause();
            HttpResult result = HttpResult.error(HttpStatus.SC_UNAUTHORIZED, throwable.getMessage());
            String json = JSONObject.toJSONString(result);
            httpResponse.getWriter().print(json);
        } catch (IOException e1) {
        }
        return false;
    }

    /**
     * 获取请求的token
     */
    private String getRequestToken(HttpServletRequest httpRequest){
        // 从header中获取token
        String token = httpRequest.getHeader("token");
        // 如果header中不存在token，则从参数中获取token
        if(StringUtils.isBlank(token)){
            token = httpRequest.getParameter("token");
        }
        return token;
    }

}