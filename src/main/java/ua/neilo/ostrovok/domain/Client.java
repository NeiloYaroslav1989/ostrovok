package ua.neilo.ostrovok.domain;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "clients")
public class Client {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String birthday;
    private String phone;
    private String groupTitle;
    private String groupTime;

}
