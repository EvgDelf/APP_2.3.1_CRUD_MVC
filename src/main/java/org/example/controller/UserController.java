package org.example.controller;

import org.example.model.User;
import org.example.service.UserServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
import java.util.Map;


@Controller
public class UserController {

    private final UserServiceImp userServiceImp;

    @Autowired
    public UserController(UserServiceImp userServiceImp) {
        this.userServiceImp = userServiceImp;
    }
    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView("home");
        List<User> allUsersList = userServiceImp.findAll();
        modelAndView.addObject("allUsers", allUsersList);
        return modelAndView;
    }
    @GetMapping("/new")
    public String createUser(Map<String, Object> map) {
        User user = new User();
        map.put("user", user);
        return "new_user";
    }

    @PostMapping("/save")
    public String saveUser (@ModelAttribute("user")User user) {
        userServiceImp.save(user);
        return "redirect:/";
    }
    @GetMapping("/delete")
    public String deleteUser(User user) {
        userServiceImp.delete(user);
        return "redirect:/";
    }
    @GetMapping("/edit")
    public ModelAndView editPage(@RequestParam Long id) {
        ModelAndView modelAndView = new ModelAndView("edit");
        User user = userServiceImp.findById(id);
        modelAndView.addObject("user", user);
        return modelAndView;
    }
    @PostMapping("/edit")
    public String editUser(@RequestParam("id") Long id, @ModelAttribute("user") User user) {
        user.setId(id);
        userServiceImp.updateUser(user);
        return "redirect:/";
    }
}
