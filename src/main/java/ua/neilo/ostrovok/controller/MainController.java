package ua.neilo.ostrovok.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ua.neilo.ostrovok.domain.News;
import ua.neilo.ostrovok.service.NewsService;

import java.util.List;

@Controller
public class MainController {
    private final NewsService newsService;

    public MainController(NewsService newsService) {
        this.newsService = newsService;
    }

    @GetMapping("/")
    public String getStartPage(Model model) {
        List<News> newsList = newsService.findAll();
        model.addAttribute("newsList", newsList);
        return "index";
    }

    @GetMapping("/index")
    public String getIndexPage(Model model) {
        List<News> newsList = newsService.findAll();
        model.addAttribute("newsList", newsList);
        return "index";
    }

    @GetMapping("/main")
    public String getMainPage() {
        return "main";
    }

}
