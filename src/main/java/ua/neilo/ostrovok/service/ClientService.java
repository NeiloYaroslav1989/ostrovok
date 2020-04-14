package ua.neilo.ostrovok.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.neilo.ostrovok.domain.Client;
import ua.neilo.ostrovok.repository.ClientRepo;

import java.util.List;

@Service
public class ClientService {
    private final ClientRepo clientRepo;

    public ClientService(ClientRepo clientRepo) {
        this.clientRepo = clientRepo;
    }

    public Client findById(Long id) {
        return clientRepo.getOne(id);
    }

    public List<Client> findAll() {
        return clientRepo.findAll();
    }

    public void save(Client client) {
        clientRepo.save(client);
    }

    public void deleteById(Long id) {
        clientRepo.deleteById(id);
    }

    public Client findByName(String name) {
        return clientRepo.findByName(name);
    }
}
