package ua.neilo.ostrovok.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.neilo.ostrovok.domain.Role;
import ua.neilo.ostrovok.domain.User;
import ua.neilo.ostrovok.repository.UserRepo;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/users")
@PreAuthorize("hasAuthority('ADMIN')")
public class UserController {
    private final UserRepo userRepo;

    public UserController(UserRepo userRepo) {
        this.userRepo = userRepo;
    }

    @GetMapping
    public String userList(Model model) {
        List<User> users = userRepo.findAll();
        model.addAttribute("users", users);

        return "userList";
    }

    @GetMapping("/edit/{id}")
    public String userEditForm(@PathVariable("id") Long id,
                               Model model) {
        User user = userRepo.getOne(id);
        model.addAttribute("user", user);
        model.addAttribute("roles", Role.values());
        return "userEdit";
    }

    @PostMapping
    public String userUpdate(
            @RequestParam String username,
            @RequestParam String password,
            @RequestParam String confirmPassword,
            @RequestParam String email,
            @RequestParam Map<String, String> form,
            @RequestParam ("userId") User user
    ) {
        user.setUsername(username);
        user.setPassword(password);
        user.setConfirmPassword(confirmPassword);
        user.setEmail(email);

        Set<String> roles = Arrays.stream(Role.values())
                                    .map(Role::name)
                                    .collect(Collectors.toSet());

        user.getRoles().clear();

        for (String key : form.keySet()) {
            if (roles.contains(key)) {
                user.getRoles().add(Role.valueOf(key));
            }
        }

        userRepo.save(user);

        return "redirect:/users";
    }

    @GetMapping("/delete/{id}")
    public String userDelete(@PathVariable("id") Long id) {
        userRepo.deleteById(id);
        return "redirect:/users";
    }


}
