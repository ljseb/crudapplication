package com.lin.soccer.controller;

import com.lin.soccer.model.UserDetails;
import com.lin.soccer.service.RegistrationService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@Controller

public class RegistrationController {
    @Autowired
    private RegistrationService registrationService;

    @RequestMapping("/register")
    public ModelAndView register(ModelMap modelMap) {

        Map<String, Object> model = new HashMap<>();
        model.put("action","new");
        return new ModelAndView("register-user", "model", model);
    }

    @GetMapping("/dashboardview")
    public ModelAndView dashboardDisplay() {


        Map<String, Object> model = new HashMap<>();
        List<UserDetails> userList = registrationService.findAllUsers();
        model.put("userList", userList);
        return new ModelAndView("dashboard", "model", model);
    }


    @PostMapping("/save")
    public ModelAndView saveUser(ModelMap modelMap, @RequestParam(value = "firstname") String firstName,
                                 @RequestParam(value = "lastname") String lastName,
                                 @RequestParam(value = "address") String address,
                                 @RequestParam(value = "city") String city,
                                 @RequestParam(value = "postcode") String postCode,
                                 @RequestParam(value = "email") String email,
                                 @RequestParam(value = "mobile") String mobile,
                                 @RequestParam(value = "id") Long id,
                                 @RequestParam(value = "action") String action) {
        UserDetails userDetails = null;
        if(action.equals("register")) {
            userDetails = new UserDetails();
        }else if (action.equals("edit")){
            userDetails = registrationService.findOne(id);
        }
        userDetails.setFirstName(firstName);
        userDetails.setLastName(lastName);
        userDetails.setAddress(address);
        userDetails.setCity(city);

        userDetails.setPostCode(postCode);
        userDetails.setEmail(email);
        userDetails.setMobile(mobile);
        registrationService.saveUser(userDetails);

        Map<String, Object> model = new HashMap<>();
        List<UserDetails> userList = registrationService.findAllUsers();
        model.put("userList", userList);


        return new ModelAndView("dashboard", "model", model);
    }

    @RequestMapping(value="/edit", method={RequestMethod.GET,RequestMethod.POST})
    public ModelAndView editUser(ModelMap modelMap, @RequestParam(value = "id") Long userId
                                 ){
        UserDetails user = registrationService.findOne(userId);
        Map<String, Object> model = new HashMap<>();

        model.put("user", user);
        model.put("action","edit");


        return new ModelAndView("register-user", "model", model);
    }

    @RequestMapping(value="/delete", method={RequestMethod.GET,RequestMethod.POST})
    public ModelAndView deleteUser(ModelMap modelMap, @RequestParam(value = "id") Long userId ){
        registrationService.delete(userId);

        Map<String, Object> model = new HashMap<>();
        List<UserDetails> userList = registrationService.findAllUsers();
        model.put("userList", userList);
        return new ModelAndView("dashboard", "model", model);

    }


}
