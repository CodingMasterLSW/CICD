package test.cicd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String hello(Model model){
        model.addAttribute("message", "Welcome to the Hello Page!");
        return "index.html";
    }

}
