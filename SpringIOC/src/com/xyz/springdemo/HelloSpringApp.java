package com.xyz.springdemo;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HelloSpringApp {

	public static void main(String[] args) {
		
		//load the Spring configuration file
		
		ClassPathXmlApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		
		//retrive bean from Spring Container
		
		Coach t1=context.getBean("myCoach1",Coach.class);
		
		Coach t2=context.getBean("myCoach2",Coach.class);
		
		//call the methods
		
		System.out.println("BaseballCoach"+t1.getDailyWorkout());
		
		System.out.println("TrackCoach"+t2.getDailyWorkout());
		
		
		context.close();
	}

}
