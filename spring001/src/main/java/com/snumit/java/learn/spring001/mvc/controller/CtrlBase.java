package com.snumit.java.learn.spring001.mvc.controller;

import com.snumit.java.learn.spring001.service.ServiceUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class CtrlBase {

    @Autowired
    private final ServiceUser serviceUser;

    public CtrlBase() {
        this.serviceUser = null;
    }

    @RequestMapping({"/","home"})
    public String showHomesPage(Map<String, Object> model){
        return "home";
    }

}
