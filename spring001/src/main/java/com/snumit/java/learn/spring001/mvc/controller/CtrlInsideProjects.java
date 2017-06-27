package com.snumit.java.learn.spring001.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller
@RequestMapping("/insideprojects")
public class CtrlInsideProjects {


    @RequestMapping(value = {"/index", "/", "*"}, method = RequestMethod.GET)
    public String index(Map<String, Object> model){
        return "home";
    }
}