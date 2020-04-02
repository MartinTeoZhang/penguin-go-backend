package com.ryzin.penguin.monitor;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

import de.codecentric.boot.admin.server.config.EnableAdminServer;

/**
 * 启动器
 */
@EnableAdminServer
@EnableDiscoveryClient
@SpringBootApplication
public class PenguinMonitorApplication {

	public static void main(String[] args) {
		SpringApplication.run(PenguinMonitorApplication.class, args);
	}
}
