package com.snumit.java.learn;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Andrey Lyudvinskij on 30.03.2017.
 */
@Controller
public class JSPLearnController {
    @RequestMapping("jsplearn_login")
    public String jsplearn_login(Model model) {
        return "jsplearn_login";
    }
//    @RequestMapping(value="/login", method = RequestMethod.POST)
//    public String addStudent(@ModelAttribute("SpringWeb")Student student, ModelMap model) {
//        model.addAttribute("name", student.getName());
//        model.addAttribute("age", student.getAge());
//        model.addAttribute("id", student.getId());
//
//        return "result";
//    }
}
