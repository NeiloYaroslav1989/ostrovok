package ua.neilo.ostrovok.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
@Table(name = "clients")
public class Client {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String birthday;

    @Column(nullable = false)
    private String phone;

    @ManyToOne (cascade = CascadeType.ALL)
    @JoinColumn (name = "group_id")
    private Group group;

}
