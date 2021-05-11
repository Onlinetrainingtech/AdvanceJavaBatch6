package com.xyz.springdemo;

public class MyApp {

	public static void main(String[] args) {
		
		
		BaseballCoach t1=new BaseballCoach();
		
		
		TrackCoach t2=new TrackCoach();
		
		System.out.println("This is BaseBallCoach::"+t1.getDailyWorkout());
		
		System.out.println("This is TrachCoch::"+t2.getDailyWorkout());

	}

}
