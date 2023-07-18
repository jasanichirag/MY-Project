package com.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Entity.Note_Taker;
import com.Util.DbSession;


public class NoteDao {

	
	public static void insertNote(Note_Taker n) {
		Session session=DbSession.createSession();
		Transaction tr=session.beginTransaction();
		session.saveOrUpdate(n);
		tr.commit();
		session.close();
	}
	
	public static List<Note_Taker> getAllNotes() {
		Session session=DbSession.createSession();
		List<Note_Taker>list=session.createQuery("from Note_Taker").list();
		return list;
	}
	
	public static void deleteNote(int id) {
		Session session=DbSession.createSession();
		Transaction tr=session.beginTransaction();
		Note_Taker n=(Note_Taker)session.get(Note_Taker.class,id);
		session.delete(n);
		tr.commit();
		session.close();
		
	}
	
	public static Note_Taker getNoteById(int id) {
		Session session=DbSession.createSession();
		Note_Taker n=session.get(Note_Taker.class, id);
		session.close();
		return n;
	}
	
	
}
