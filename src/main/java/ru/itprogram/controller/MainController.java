package ru.itprogram.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String start() {
        return "index";
    }

    @RequestMapping(value = "/{number}", method = RequestMethod.POST)
    public String getData(@RequestParam("message") String message, @PathVariable("number") int number,  Model model) {
        model.addAttribute("message", message);
        model.addAttribute("number", number);
        return "data";
    }
}
