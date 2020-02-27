package com.ryzin.penguin.monitor;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import de.codecentric.boot.admin.server.config.EnableAdminServer;

@EnableAdminServer
@SpringBootApplication
public class PenguinMonitorApplication {

	public static void main(String[] args) {
		SpringApplication.run(PenguinMonitorApplication.class, args);
	}
}
