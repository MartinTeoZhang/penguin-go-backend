package com.ryzin.penguin.backup;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication(scanBasePackages={"com.ryzin.penguin"})
public class PenguinBackupApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(PenguinBackupApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(PenguinBackupApplication.class, args);
	}
}
