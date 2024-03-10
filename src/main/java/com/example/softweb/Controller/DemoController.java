package com.example.softweb.Controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("/admin/demo")
    public String admin() {
        return "pageAdmin";
    }

    @PreAuthorize("hasAnyRole('USER', 'ADMIN')")
    @GetMapping("/user/demo")
    public String user() {
        return "pageUser";
    }

    @GetMapping("/register/demo")
    public String register() {
        return "register";
    }
    @GetMapping("/register-success")
    public String registrationSuccess(Model model) {
        return "register-success";
    }
    @GetMapping("/")
    public String home() {
        return "index";
    }
}
