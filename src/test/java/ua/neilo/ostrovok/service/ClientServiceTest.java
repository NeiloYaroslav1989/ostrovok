package ua.neilo.ostrovok.service;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import ua.neilo.ostrovok.domain.Client;

import static org.junit.jupiter.api.Assertions.*;
@RunWith(SpringRunner.class)
@SpringBootTest
class ClientServiceTest {
    @Autowired
    private ClientService clientService;
    @Test
    void findById() {
        Client client = new Client();
    }
}