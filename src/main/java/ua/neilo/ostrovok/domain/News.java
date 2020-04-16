package ua.neilo.ostrovok.domain;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class News {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String img;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String description;

    private String author;

    @Column(nullable = false)
    private String date;

    public News() {}

    public News(String title, String description, String author, String date) {
        this.title = title;
        this.description = description;
        this.author = author;
        this.date = date;
    }

}
