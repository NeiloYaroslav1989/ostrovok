package ua.neilo.ostrovok.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.neilo.ostrovok.domain.Group;

public interface GroupRepo extends JpaRepository<Group, Long> {
    public Group findByTitle(String title);
}
