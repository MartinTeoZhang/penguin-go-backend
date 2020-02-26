package com.ryzin.penguin.boot;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;


@SpringBootApplication(scanBasePackages={"com.ryzin.penguin"})
public class PenguinBootApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(PenguinBootApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(PenguinBootApplication.class, args);
	}

}
