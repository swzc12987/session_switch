package com.ericsson.server.config;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@EnableAutoConfiguration
public class BeanConfig {
    
    @Bean
    public RestTemplate getRestTemplate() {
	return new RestTemplate();
    }

}
