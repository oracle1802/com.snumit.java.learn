package com.snumit.java.learn.spring001.mvc.controller;

import com.snumit.java.learn.spring001.service.ServiceUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Andrey on 17.05.2017.
 */
@Controller
@RequestMapping("/info")
public class CtrlInfo {

    @Autowired
    private final ServiceUser serviceUser = null;

    public CtrlInfo(){

    }

    @RequestMapping(value = {"/tree"}, method = RequestMethod.GET)
    public String tree(Model model){

        return "info/tree";
    }
}
