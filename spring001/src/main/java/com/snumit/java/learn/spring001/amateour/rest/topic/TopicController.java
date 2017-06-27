package com.snumit.java.learn.spring001.amateour.rest.topic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by Andrey Lyudvinskij on 23.06.2017.
 *
 * simple rest service
 *
 * GET      /topics     Gets all topics
 * GET      /topics/id  Gets the topic
 * POST     /topics     Create new topic
 * PUT      /topics/id  Updates the topic
 * DELETE   /topics/id  Deletes the topic
 */

//@RestController
//@RequestMapping("/amateour/rest")
public class TopicController {


//    @Autowired
////    private TopicService topicService;
//
//    @RequestMapping(method = RequestMethod.GET, path = "/topics" )
//    public List<Topic> getAllTopics(){
////        return topicService.getAll();
//        return null;
//    }

//
//    // optional params example
//    @RequestMapping(method = RequestMethod.GET, path = "/topics/find")
//    public List<Topic> getSearchedTopics(
//            @RequestParam(value = "id", required = false) String id,
//            @RequestParam(value = "name", required = false) String name
//    ){
//        System.out.println("id = " + id);
//        System.out.println("name = " + name);
////        return topicService.getAll();
//        return null;
//    }
//
//    @RequestMapping(method = RequestMethod.GET, path = "/topics/{id}")
//    public Topic getTopic(@PathVariable("id") String id){
////        return topicService.getTopic(id);
//        return  null;
//    }
//
//    @RequestMapping(method = RequestMethod.POST, value = "/topics")
//    public void addTopic(@RequestBody Topic topic){
////        topicService.addTopic(topic);
//    }
//
//    @RequestMapping(method = RequestMethod.PUT, value = "/topics/{id}")
//    public void updateTopic(@RequestBody Topic topic, @PathVariable String id){
////        topicService.updateTopic(id, topic);
//    }
//
//    @RequestMapping(method = RequestMethod.DELETE, path = "/topics/{id}")
//    public void deleteTopic(@PathVariable("id") String id){
////        topicService.deleteTopic(id);
//    }
}