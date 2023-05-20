package com.spring.slalom.config;

import com.spring.slalom.model.TrickDAO;
import com.spring.slalom.model.TrickDAOImpl;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

// @Configuration - žymi konfigūracijos komponentą
// viduje leidžia kurti bean per metodus su @Bean
@Configuration
public class SpringConfig {




	@Bean
	@Qualifier("TrickDAO")
	public TrickDAO getTrickDAO() {
		return new TrickDAOImpl();
	}

}