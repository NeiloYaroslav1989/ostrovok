package ua.neilo.ostrovok.domain;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "grp")
@Data
public class Group {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String time;
    private String teacher;
}
