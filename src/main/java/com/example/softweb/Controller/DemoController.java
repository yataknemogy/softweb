package com.example.softweb.Controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class DemoController {

    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("/admin")
    public String admin(){
        return "pageAdmin";
    };
    @PreAuthorize("hasAnyRole('USER', 'ADMIN')")
    @GetMapping("/user")
    public String user(){
        return "pageUser";
    };
    @GetMapping("/login")
    public String login(){
        return "perform_login";
    }
    @GetMapping("/register")
    public String register(){
        return "register";
    }

}
