package com.ryzin.penguin.common.utils;

/**
 * 字符串工具类
 * @author 
 * @date 
 */
public class StringUtils {

	public static boolean isBlank(String value) {
		return value == null || "".equals(value) || "null".equals(value) || "undefined".equals(value);
	}

}
