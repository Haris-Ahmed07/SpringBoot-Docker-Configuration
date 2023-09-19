package com.docker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringBootDockerConfigurationApplication {

	
	@GetMapping("/")
	public String home()
	{
		return "The Application Has Been Started Successfully... ";
	}
	
	public static void main(String[] args) {
		SpringApplication.run(SpringBootDockerConfigurationApplication.class, args);
	}

}
