package com.snumit.java.learn;

import com.apress.prospring4.ch7.Contact;
import com.apress.prospring4.ch7.ContactDao;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import java.sql.*;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
/**
 * Created by Andrey Lyudvinskij on 14.03.2017.
 */
@Controller
public class SomeClassController {
    private int visitorCount = 0;
    private String userName = "";

//    private OracleDataSource setDataSource;

    // welcome page
    @RequestMapping("/")
    public String index(Model model) {
        return "index";
    }

//    @Autowired
//    private oracle.jdbc.pool.OracleDataSource dataSource;

//    @Autowired
//    private org.springframework.jdbc.core.JdbcTemplate jdbcTemplate;
    @Autowired
    private ContactDao contactDao;

    @RequestMapping("index2")
    public String index2(Model model) throws SQLException {

        model.addAttribute("visitorCount", visitorCount++);
        model.addAttribute("rowsCount", userName);

//        org.springframework.context.support.GenericXmlApplicationContext ctx = new org.springframework.context.support.GenericXmlApplicationContext();
//        ctx.load("classpath:web/WEB-INF/applicationContext.xml");
//        ctx.refresh();
//        ContactDao contactDao = ctx. getBean ( "contactDao", ContactDao. class) ;
        listContacts(contactDao.findAll());

        this.userName = "OK!!!";
        return "index2";
    }

    private static void listContacts(List<Contact> contacts) {
        System.out.println("");
        System.out.println("Listing contacts without details:");
        for (Contact contact : contacts) {
            System.out.println(contact);
            System.out.println();
        }
    }
}
