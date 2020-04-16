package ua.neilo.ostrovok.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "grp")
@Getter
@Setter
public class Group {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String teacher;

    @OneToMany (mappedBy = "group", fetch = FetchType.EAGER)
//    @ElementCollection(targetClass = Client.class, fetch = FetchType.EAGER)
//    @CollectionTable(name = "group_clients", joinColumns = @JoinColumn(name = "client_id"))
    private List<Client> clients;

    public void addClientToList(Client client) {
        clients.add(client);
    }

    public void removeClientFromList(Client client) {
        clients.remove(client);
    }
}
