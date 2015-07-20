package org.exadel.training.controller;

import org.exadel.training.service.EmailNotifierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
    @Autowired
    private EmailNotifierService emailNotifierService;
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String root() {
        return "redirect:/welcome";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, @RequestParam(value = "error", required = false) String loginError) {
        if (loginError != null) {
            model.addAttribute("loginError", true);
        }
        String[] mails = {"alexey_hw@tut.by"};
        emailNotifierService.send_email_notification(mails,"login","login sucesfull");
        return "login";
    }
}
