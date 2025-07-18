package com.user.controller;

import com.user.entity.User;
import com.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String home(Model model) {
        List<User> userList = userService.getAllUsers();
        model.addAttribute("userList", userList);
        return "index";
    }

    @GetMapping("/users/{id}")
    public String viewProfile(@PathVariable int id, Model model) {
        User user = userService.getUserById(id);
        if(user != null) {
            model.addAttribute("registerdUser", user);
            return "profile";
        } else {
            return "redirect:/login";
        }
    }

    @GetMapping("/register")
    public String showRegisterForm(Model model) {
        model.addAttribute("userForm", new User());
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(@ModelAttribute("userDetails") User userDetails, Model model) {
        try {
            userService.registerUser(userDetails.getId(),
                                     userDetails.getName(),
                                     userDetails.getPasswordHash(),
                                     userDetails.getCity());
            model.addAttribute("message", "Registration successful!");
            return "index";
        } catch (Exception e) {
            model.addAttribute("message", "Something went wrong!");
            return "register";
        }
    }

    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("loginForm", new User());
        return "login";
    }

    @PostMapping("/login")
    public String loginUser(@ModelAttribute("userLoginDetails") User userLoginDetails, Model model) {
        Optional<User> authenticatedUser = userService.authenticateUser(userLoginDetails.getName(),
                                                               userLoginDetails.getPasswordHash());
        if (authenticatedUser.isPresent()) {
            model.addAttribute("user", authenticatedUser.get());
            return "profile";
        } else {
            model.addAttribute("error", "Invalid credentials!");
            return "login";
        }
    }

}
