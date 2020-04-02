package com.ryzin.penguin.consumer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ryzin.penguin.consumer.feign.PenguinProducerService;

@RestController
public class FeignHelloController {

    @Autowired
    private PenguinProducerService penguinProducerService;
    
    @RequestMapping("/feign/call")
    public String call() {
        // 像调用本地服务一样
        return penguinProducerService.hello();
    }
}
