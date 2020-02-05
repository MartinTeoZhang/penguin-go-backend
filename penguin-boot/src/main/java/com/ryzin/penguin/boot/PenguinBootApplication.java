package com.ryzin.penguin.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages={"com.ryzin.penguin"})
public class PenguinBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(PenguinBootApplication.class, args);
	}

}
