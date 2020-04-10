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

    public Client findClientById(Long id) {
        return clientRepo.getOne(id);
    }

    public List<Client> findAllClients() {
        return clientRepo.findAll();
    }

    public void saveClient(Client client) {
        clientRepo.save(client);
    }

    public void deleteClient(Long id) {
        clientRepo.deleteById(id);
    }

    public Client findClientByName(String name) {
        return clientRepo.findClientByName(name);
    }
}
