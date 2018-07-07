package com;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages="com")
@MapperScan("com.bw.mapper")
public class GuyangCityApplication {

	public static void main(String[] args) {
		SpringApplication.run(GuyangCityApplication.class, args);
	}
}
