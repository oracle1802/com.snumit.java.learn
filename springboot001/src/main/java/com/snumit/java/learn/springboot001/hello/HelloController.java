package com.snumit.java.learn.springboot001.hello;

import com.snumit.java.learn.springboot001.TopicsList;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

/**
 * Created by Andrey Lyudvinskij on 23.06.2017.
 */
@RestController
public class HelloController {

    @RequestMapping("/hello")
    public List<TopicsList> sayHi(){
        return Arrays.asList(
                new TopicsList(1, "First topic"),
                new TopicsList(2, "Second topic")
        );
    }
}