package com.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller
@RequestMapping(value = "/address")
public class AddressController {
    @RequestMapping(value = "/address", method = RequestMethod.GET)
    String address(Model model) {
        return "address";
    }

    @RequestMapping(value = "/addressSuccess", method = RequestMethod.GET)
    String addressSuccess(Model model) {
        return "addressSuccess";
    }

    @RequestMapping(value = "/success`", method = RequestMethod.GET)
    String success(Model model) {
        return "success";
    }
}
