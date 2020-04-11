package ua.neilo.ostrovok.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
        return "clientAdd";
    }

    @PostMapping("/clientAdd")
    public String clientAdd(Client client, Model model) {
        Client clientFromDb = clientService.findClientByName(client.getName());

        if (clientFromDb != null) {
            model.addAttribute("message", "Клиент с таким именем и фамилией уже есть в базе данных");
            return "clientAdd";
        }

        clientService.saveClient(client);

        return "redirect:/clients";
    }

    @GetMapping("/clients/edit/{id}")
    public String getClientEditPage(@PathVariable("id") Long id, Model model) {
        Client client = clientService.findClientById(id);
        model.addAttribute(client);
        return "clientEdit";
    }

    @PostMapping("/clientEdit")
    public String clientUpdate(@RequestParam("clientId") Long id,
                                    @RequestParam("name") String name,
                                    @RequestParam("groupTitle") String groupTitle,
                                    @RequestParam("groupTime") String groupTime,
                                    @RequestParam("phone") String phone,
                                    @RequestParam("birthday") String birthday,
                                    Model model) {
        Client client = clientService.findClientById(id);

        client.setName(name);
        client.setGroupTitle(groupTitle);
        client.setGroupTime(groupTime);
        client.setPhone(phone);
        client.setBirthday(birthday);

        clientService.saveClient(client);

        return "redirect:/clients";
    }



    @GetMapping("/clients/delete/{id}")
    public String clientDelete(@PathVariable("id") Long id) {
        clientService.deleteClient(id);
        return "redirect:/clients";
    }



}
