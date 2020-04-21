package ua.neilo.ostrovok.domain;


import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class Payment {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Long id;

    private int payment;

    private String year;

    private String month;

    @ManyToOne
    @JoinColumn(name = "client_id", nullable = false)
    private Client client;
}
