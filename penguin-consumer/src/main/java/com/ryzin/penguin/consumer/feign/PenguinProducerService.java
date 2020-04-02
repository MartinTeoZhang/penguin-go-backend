package com.ryzin.penguin.consumer.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;

@FeignClient(name = "penguin-producer", fallback = FeignHelloHystrix.class) // penguin-producer是要调用的服务名
public interface PenguinProducerService { // Feign是声明式调用
	
    @RequestMapping("/hello") // 添加跟调用目标方法一样的方法声明，只需要方法声明，不需要具体实现，注意跟目标方法定义保持一致
    public String hello();
}