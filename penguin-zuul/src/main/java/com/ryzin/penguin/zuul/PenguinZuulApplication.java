package com.ryzin.penguin.zuul;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;

@EnableZuulProxy // 开启服务网关支持
@SpringBootApplication
public class PenguinZuulApplication { 

	public static void main(String[] args) {
		SpringApplication.run(PenguinZuulApplication.class, args);
	}
}