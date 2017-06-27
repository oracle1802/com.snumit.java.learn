package com.apress.prospring4.ch7;

import org.hibernate.Hibernate;

/**
 * Created by Andrey on 17.05.2017.
 */
public class HibernateService {
    HibernateService(){
        System.out.println("HibernateService instantiated");
        getContactList();

    }

    public void getContactList(){
        ContactDao contactDao = new ContactDaoImpl();

//        for  (Contact contact:    contactDao.findAll()) {
//
//            System.out.println(contactDao);
//        }
    }
}
