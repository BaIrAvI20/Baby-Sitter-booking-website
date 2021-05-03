package com.emp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.emp"})
public class run {

	public static void main(String[] args) {
		SpringApplication.run(run.class, args);
	}
}
