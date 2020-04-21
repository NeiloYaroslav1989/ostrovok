package ua.neilo.ostrovok.domain;

import lombok.Data;

import javax.persistence.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Entity
@Data
public class News implements Comparable<News> {
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

    @Override
    public int compareTo(News otherNews) {
        SimpleDateFormat formatter = new SimpleDateFormat("dd.MM.yyyy");
        Date thisDate = new Date();
        Date otherDate = new Date();
        try {
            thisDate = formatter.parse(this.date);
            otherDate = formatter.parse(otherNews.date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return thisDate.compareTo(otherDate);
    }
}
