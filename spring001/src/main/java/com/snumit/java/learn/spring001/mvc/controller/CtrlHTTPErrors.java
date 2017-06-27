package com.snumit.java.learn.spring001.mvc.controller;

    import org.springframework.stereotype.Controller;
        import org.springframework.ui.Model;
    import org.springframework.web.bind.annotation.PathVariable;
    import org.springframework.web.bind.annotation.RequestMapping;
        import org.springframework.web.bind.annotation.RequestMethod;
    import org.springframework.web.servlet.HandlerMapping;

    import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/err")
public class CtrlHTTPErrors {


    @RequestMapping(value = {"/{id}**"}, method = RequestMethod.GET)
    public String HTTPErr403(@PathVariable("id") String id, HttpServletRequest request, Model model){

        //todo реализовать поддержку записи ошибок в БД
        String HTTPErr = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
        String errText = "Oops, an error occurred! Code: ";

        switch (id){
            case "400":
                model.addAttribute("errtext", errText + id);
                break;
            case "403":
                model.addAttribute("errtext", errText + id);
                break;
            case "404":
                model.addAttribute("errtext", errText + id);
                break;
            case "500":
                model.addAttribute("errtext", errText + id);
                break;
            default:
                model.addAttribute("errtext", errText + id);
                break;
        }
        return "err";
    }
}