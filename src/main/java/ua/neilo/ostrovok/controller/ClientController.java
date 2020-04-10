package ua.neilo.ostrovok.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ua.neilo.ostrovok.domain.Client;
import ua.neilo.ostrovok.service.ClientService;

import java.util.List;

@Controller
@PreAuthorize("hasAuthority('TEACHER')")
public class ClientController {
    private final ClientService clientService;

    public ClientController(ClientService clientService) {
        this.clientService = clientService;
    }

    @GetMapping("/clients")
    public String getClientList(Model model) {
        List<Client> clients = clientService.findAllClients();
        model.addAttribute("clients", clients);
        return "clientList";
    }

    @GetMapping("/clientAdd")
    public String getClientAddPage() {
        return "clientEdit";
    }

    @PostMapping("/clientAdd")
    public String clientAdd() {

        return "redirect:/clientList";
    }




}
