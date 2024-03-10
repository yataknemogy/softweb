package com.example.softweb.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.stereotype.Controller;

import java.security.Principal;

@Controller
public class LoginController {
    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }
    @GetMapping("/login-success")
    public String loginSuccess(Principal principal) {
        return "redirect:/";
    }

    @GetMapping("/login-failure")
    public String loginFailure(Model model) {
        model.addAttribute("error", true);
        model.addAttribute("errorMessage", "Invalid username or password");
        return "login";
    }

    @GetMapping("/login-remember-me")
    public String loginWithRememberMe(Model model) {
        return "redirect:/";
    }

    @GetMapping("/logout")
    public String logout() {
        return "redirect:/login?logout";
    }

}
