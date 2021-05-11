package com.xyz.first;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class StoreData {

	public static void main(String[] args) {
		 StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		   
		   Metadata meta=new MetadataSources(ssr).getMetadataBuilder().build();
		   
		   SessionFactory factory=meta.getSessionFactoryBuilder().build();
		   
		   Session session=factory.openSession();
		   
		   Transaction t=session.beginTransaction();
		   
		   
		   ArrayList<String>list1=new ArrayList<>();
		   
		   list1.add("p1");
		   list1.add("p2");
		   
		   ArrayList<String>list2=new ArrayList<>();
		   
		   list2.add("p3");
		   list2.add("p4");
		   
		   
		   Category c1=new Category();
		   c1.setCname("category1");
		   c1.setProductname(list1);
		   
		   
		   Category c2=new Category();
		   c2.setCname("category2");
		   c2.setProductname(list2);
		   
		   
		   session.persist(c1);
		   
		   session.persist(c2);
		   
		   
		   t.commit();
		   
		   session.close();
		   
		   System.out.println("DataInserted...");
	}

}
