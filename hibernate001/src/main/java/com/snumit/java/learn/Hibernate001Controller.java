package com.snumit.java.learn;


import com.apress.prospring4.ch7.Contact;
import com.apress.prospring4.ch7.ContactDao;
import org.hibernate.mapping.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
public class Hibernate001Controller {

    @Autowired
    private ContactDao contactDao;

    @RequestMapping("hibernate001")
    public String index(ModelMap model) {
        java.util.List<Contact> lst = contactDao.findAll();

        model. addAttribute("contactList", lst);
//        ArrayList lst = new ArrayList();
//        lst.add("somv value 1");
//        model.addAttribute("contact2-list",contactDao.findAll());
        return "hibernate001";
    }
//    @RequestMapping(value="/hibernate001.html", method= RequestMethod.GET)
//    public String handlePost(@RequestParam String action, Model m) {
//        if( action.equals("save") ){
//            //handle save
//        }
//        else if( action.equals("renew") ){
//            //handle renew
//        }
//        m.addAttribute("name", "change");
//        return "/";
//    }


}
