package com.ltk.forum.config;


import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableJpaRepositories(basePackages = {"com.ltk.forum.repository"}) //de bat tinh nang repository
@EnableTransactionManagement //de bat tinh nang transaction
public class JPAConfig {
	
	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
		LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
		em.setDataSource(dataSource());
		em.setPersistenceUnitName("persistence-data");//noi bang trong sql voi entity
		JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
		em.setJpaVendorAdapter(vendorAdapter);
		em.setJpaProperties(additionalProperties());
		return em;
	}
	
	//quan ly transaction
	//commit, rollback ..
	@Bean
	JpaTransactionManager transactionManager(EntityManagerFactory entityManagerFactory) {
		JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(entityManagerFactory);
		return transactionManager;
	}
	
	@Bean
	public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
		return new PersistenceExceptionTranslationPostProcessor();
	}
	
	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		
		try {
//			dataSource.setDriverClassName("com.mysql.jdbc.Driver");
//			dataSource.setUrl("jdbc:mysql://b042458a1d5f49:065b1ac0@us-cdbr-east-03.cleardb.com/heroku_729599d8be8e937?reconnect=true");
//			dataSource.setUsername("b042458a1d5f49");
//			dataSource.setPassword("065b1ac0");
//			dataSource.setUrl("jdbc:mysql://localhost:3306/askus_db");
//			dataSource.setUsername("root");
//			dataSource.setPassword("root");
			dataSource.setDriverClassName("org.postgresql.Driver");
			dataSource.setUrl("jdbc:postgresql://azure-posgresql.postgres.database.azure.com:5432/askus_db?user=tanky@azure-posgresql&password=Abc123CBa&sslmode=require");
			dataSource.setUsername("tanky@azure-posgresql");
			dataSource.setPassword("Abc123CBa");
		} catch (Exception e) {
			System.out.println("loi r");
		}
		
		return dataSource;
	}
	
	Properties additionalProperties() {
		Properties properties = new Properties();
		
		properties.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQL5Dialect");
		properties.setProperty("hibernate.hbm2ddl.auto", "none");
		properties.setProperty("hibernate.show_sql", "true");
		properties.setProperty("hibernate.enable_lazy_load_no_trans", "true");
		
		return properties;
	}
}