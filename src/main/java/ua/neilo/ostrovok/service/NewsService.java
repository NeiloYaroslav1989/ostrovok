package ua.neilo.ostrovok.service;

import org.springframework.stereotype.Service;
import ua.neilo.ostrovok.domain.News;
import ua.neilo.ostrovok.repository.NewsRepo;

import java.util.List;

@Service
public class NewsService {

    private final NewsRepo newsRepo;
    public NewsService(NewsRepo newsRepo) {
        this.newsRepo = newsRepo;
    }


    public News findById(Long id) {
        return newsRepo.findById(id).orElse(null);
    }

    public List<News> findAll() {
        return newsRepo.findAll();
    }

    public void save(News news) {
        newsRepo.save(news);
    }

    public void deleteById(Long id) {
        newsRepo.deleteById(id);
    }


}
