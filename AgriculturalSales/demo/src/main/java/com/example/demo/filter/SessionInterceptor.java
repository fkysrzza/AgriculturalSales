package com.example.demo.filter;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

@Configuration
public class SessionInterceptor extends WebMvcConfigurationSupport{

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(getWebmvcConfig()).addPathPatterns("/**").excludePathPatterns("/login","/registered");
        super.addInterceptors(registry);
    }
    @Bean
    public WebmvcConfig getWebmvcConfig(){
    	return new WebmvcConfig();
    }
}
