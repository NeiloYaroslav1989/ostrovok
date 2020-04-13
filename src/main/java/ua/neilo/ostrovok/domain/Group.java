package ua.neilo.ostrovok.domain;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "grp")
@Data
public class Group {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String teacher;

    @OneToMany (mappedBy = "group", fetch = FetchType.EAGER)
    private List<Client> clients;

    public void addClient(Client client) {
        clients.add(client);
    }
}
