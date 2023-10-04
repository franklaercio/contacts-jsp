package model;

import java.util.ArrayList;
import java.util.List;

public class DatabaseSingleton {
	
	private List<Contact> contacts = new ArrayList<Contact>();
	
	private int lastIdInserted = 0;
	
	private static DatabaseSingleton instance;
	
	private DatabaseSingleton() {
		// Non instance class
	}

	public static DatabaseSingleton getInstance() {
		if(instance == null) {
			instance = new DatabaseSingleton();
		}
		return instance;
	}

	public List<Contact> getContacts() {
		return this.contacts;
	}
	
	public synchronized void addContact(Contact contact) {
		this.lastIdInserted = lastIdInserted + 1;
		this.contacts.add(contact);
	}
	
	public synchronized void removeContact(Contact contact) {
		this.contacts.remove(contact);
	}

	public void setContacts(List<Contact> contacts) {
		this.contacts = contacts;
	}

	public int getLastIdInserted() {
		return lastIdInserted;
	}
}
