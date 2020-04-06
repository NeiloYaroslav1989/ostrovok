package ua.neilo.ostrovok.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.neilo.ostrovok.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
