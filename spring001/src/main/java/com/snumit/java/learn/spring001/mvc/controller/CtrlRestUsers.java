package com.snumit.java.learn.spring001.mvc.controller;

import com.snumit.java.learn.spring001.persistence.entity.User;
import com.snumit.java.learn.spring001.service.ServiceUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;

/**
 * Created by Andrey on 23.05.2017.
 */
@Controller
@RequestMapping("/rusers")
public class CtrlRestUsers {
    @Autowired
    ServiceUser serviceUser = null;
// {loginName}"/{fname}/{lname}/{mname}
    @RequestMapping(value = "/{userId}", method = RequestMethod.GET/*, headers = {"Accept=text/html, application/json"}*/)
    public @ResponseBody
    ArrayList getUser(
            @PathVariable("userId") String userId,
//            @PathVariable("loginName") String loginName,
//            @PathVariable("fname") String firstName,
//            @PathVariable("lname") String lastName,
//            @PathVariable("mname") String middleName,
            Model model){
        User user = serviceUser.findByLoginName("andrey1980avl");

        if (userId != null)
            System.out.println("userId" + userId);

//        if (loginName != null)
//            System.out.println("loginName" + loginName);

        System.out.println("--------------------");

        User[] usr = new User[2];
        ArrayList lst = new ArrayList();
        lst.add(serviceUser.findByLoginName("andrey1980avl"));
        lst.add(serviceUser.findByLoginName("andrey1980avl"));

        usr[0] = serviceUser.findByLoginName("andrey1980avl");
        usr[1] = serviceUser.findByLoginName("andrey1980avl");

//        return (serviceUser.findByLoginName("andrey1980avl"));
        return lst;
    }
}
