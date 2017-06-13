package com.crazypig.demo.embededwebapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

    @RequestMapping({"/", "/index"})
    public ModelAndView index() {

        return new ModelAndView("index");

    }

}
