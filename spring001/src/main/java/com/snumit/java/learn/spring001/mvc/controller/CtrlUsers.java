package com.snumit.java.learn.spring001.mvc.controller;

import com.snumit.java.learn.spring001.persistence.entity.User;
import com.snumit.java.learn.spring001.service.ServiceUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
@Controller
@RequestMapping("/admin/users")
public class CtrlUsers {

    @Autowired
    private final ServiceUser serviceUser = null;


    public CtrlUsers() {

    }

    @RequestMapping(value = "/adminusers", method = RequestMethod.GET)
    public String adminUsersList(
            @RequestParam("isadmin") String isAdmin,
            Model model){

        model.addAttribute("userservice", serviceUser);

        return "userslist";
    }

    @RequestMapping(value = "/allusers", method = RequestMethod.GET)
    public String usersList(
            Model model){

        model.addAttribute("serviceUser", serviceUser);

        return "userslist";
    }

    @RequestMapping(value = "/useraddedit", method = RequestMethod.GET)
    public String usersAddEdit(
            Model model){

//        model.addAttribute("user", new User("fna", "snu", "lnu"));

        return "useraddedit";
    }

    @RequestMapping(value = "/useradd", method = RequestMethod.GET)
    public String usersAdd(
            Model model){

//        model.addAttribute("user", new User("fna", "snu", "lnu"));

        return "useraddedit";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String addUser(@Valid User user, BindingResult bindingResult){
                if(bindingResult.hasErrors()){
                    return "splitter/edit";
                }
        serviceUser.addUser(user);
        return "userslist";
    }
}