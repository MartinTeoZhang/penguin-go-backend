package com.ryzin.penguin.consumer.feign;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 回调处理类
 * @author Ryzin
 * 实现 PenguinProducerService 接口，并实现对应的方法，返回调用失败后的信息
 */
@Component
public class PenguinProducerHystrix implements PenguinProducerService {

    @RequestMapping("/hello")
    public String hello() {
    	return "sorry, hello service call failed.";
    }
}