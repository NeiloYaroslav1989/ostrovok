package ua.neilo.ostrovok.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.neilo.ostrovok.domain.User;
import ua.neilo.ostrovok.repository.UserRepo;

import java.util.List;

@Service
public class UserService {
    private final UserRepo userRepo;

    public UserService(UserRepo userRepo) {
        this.userRepo = userRepo;
    }

    public User findById(Long id) {
        return userRepo.findById(id).orElse(null);
    }

    public List<User> findAll() {
        List<User> users = userRepo.findAll();
        return users;
    }

    public void save(User user) {
        userRepo.save(user);
    }

    public User findByUsername(String username) {
        return userRepo.findByUsername(username);
    }

    public void deleteById(Long id) {
        userRepo.deleteById(id);
    }
}
