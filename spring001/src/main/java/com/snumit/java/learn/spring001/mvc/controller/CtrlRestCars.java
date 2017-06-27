package com.snumit.java.learn.spring001.mvc.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.Serializable;

/**
 * Created by Andrey on 24.05.2017.
 */
@Controller
@RequestMapping("/cars")
public class CtrlRestCars {

    @RequestMapping(value = {"/testajax"}, method = RequestMethod.GET)
    public String tree(Model model){
    
        return "testajax";
    }

    @RequestMapping(value = "/car", method = RequestMethod.GET)
    public ResponseEntity<Car> get() {

        Car car = new Car();
        car.setColor("Blue");
        car.setMiles(100);
        car.setVIN("1234");

        return new ResponseEntity<Car>(car, HttpStatus.OK);
    }

    @RequestMapping(value = "/carp", method = RequestMethod.POST, produces = "application/json")
    public @ResponseBody ResponseEntity<Car> update(@RequestBody Car car) {

        if (car != null) {
            car.setMiles(car.getMiles() + 100);
        }
        System.out.println("post requested");
        final HttpHeaders httpHeaders= new HttpHeaders();
        httpHeaders.setContentType(MediaType.APPLICATION_JSON);
        return new ResponseEntity<Car>(car, httpHeaders, HttpStatus.OK);
    }

    //    public @ResponseBody
    //    String Submit(@RequestParam("name") String name,@RequestParam("location") String location) {
    //        // your logic here
    //        return resp;
    //    }
}


class Car implements Serializable {

    public String getVIN() {
        return VIN;
    }

    public void setVIN(String VIN) {
        this.VIN = VIN;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Integer getMiles() {
        return miles;
    }

    public void setMiles(Integer miles) {
        this.miles = miles;
    }

    private String VIN;
    private String color;
    private Integer miles;


}