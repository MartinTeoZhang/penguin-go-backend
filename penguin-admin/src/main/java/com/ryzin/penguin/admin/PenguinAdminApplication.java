package com.ryzin.penguin.admin;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages={"com.ryzin.penguin"})
public class PenguinAdminApplication {

	public static void main(String[] args) {
		SpringApplication.run(PenguinAdminApplication.class, args);
	}

}
