package ua.neilo.ostrovok.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.neilo.ostrovok.domain.Role;
import ua.neilo.ostrovok.domain.User;
import ua.neilo.ostrovok.repository.UserRepo;
import ua.neilo.ostrovok.service.UserService;

import java.util.*;
import java.util.stream.Collectors;

@Controller
public class RegistrationController {
    private final UserService userService;

    public RegistrationController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/registration")
    public String registration() {
        return "userAdd";
    }

    @PostMapping("/registration")
    public String addUser(@RequestParam Map<String, String> form,
                          Model model,
                          User user) {
        User userFromDb = userService.findByUsername(user.getUsername());

        if (userFromDb != null) {
            model.addAttribute("message", "User exists!");
            return "userAdd";
        }

        user.setActive(true);

        Set<String> roles = Arrays.stream(Role.values())
                .map(Role::name)
                .collect(Collectors.toSet());

        Set<Role> userRoles = new HashSet<>();

        for (String key : form.keySet()) {
            if (roles.contains(key)) {
                userRoles.add(Role.valueOf(key));
            }
        }
        user.setRoles(userRoles);
        userService.save(user);

        return "redirect:/users";
    }
}
