package ua.neilo.ostrovok.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.neilo.ostrovok.domain.Client;

public interface ClientRepo extends JpaRepository<Client, Long> {
    Client findByName(String name);
}
