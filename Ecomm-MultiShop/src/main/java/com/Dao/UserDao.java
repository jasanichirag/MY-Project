package com.Dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Entity.Registration;
import com.Util.DbSession;

public class UserDao {

	public static void insertUser(Registration u) {
		System.out.println("insert User Start...");
		Session session=DbSession.createConnection();
		System.out.println("session start");
		Transaction tr=session.beginTransaction();
		System.out.println("transaction....");
		session.save(u);
		System.out.println("save user");
		tr.commit();
		System.out.println("transaction commit");
		session.close();
		System.out.println("insert user successfully....");
		
	}
}
