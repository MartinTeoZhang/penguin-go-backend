package com.ryzin.penguin.consumer.feign;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
public class FeignHelloHystrix implements PenguinProducerService {

    @RequestMapping("/hello")
    public String hello() {
    	return "sorry, this service call failed.";
    }
}