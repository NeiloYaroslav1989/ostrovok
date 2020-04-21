package ua.neilo.ostrovok.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ua.neilo.ostrovok.domain.News;
import ua.neilo.ostrovok.domain.User;
import ua.neilo.ostrovok.service.NewsService;
import ua.neilo.ostrovok.service.UserService;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@PreAuthorize("hasAuthority('ADMIN')")
@RequestMapping("/news")
public class NewsController {

    private final NewsService newsService;

    public NewsController(NewsService newsService) {
        this.newsService = newsService;
    }

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping
    public String getNewsPage(Model model) {
        List<News> newsList = newsService.findAll();

        Collections.reverse(newsList);

        model.addAttribute("newsList", newsList);
        return "newsList";
    }

    @GetMapping("/add")
    public String getNewsAddPage(Model model) {
        List<News> newsList = newsService.findAll();
        model.addAttribute("newsList", newsList);
        return "newsAdd";
    }

    @PostMapping("/add")
    public String newsAdd(@RequestParam("title") String title,
                          @RequestParam("description") String description,
                          @RequestParam("img") MultipartFile img
    ) throws IOException {

        SimpleDateFormat formatter = new SimpleDateFormat("dd.MM.yyyy");
        String currentDate = formatter.format(new Date());

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String author = auth.getName();

        News news = new News(title, description, author, currentDate);

        if (img != null && !img.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);

            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }
            String uuidFilename = UUID.randomUUID().toString();
            String resultFilename = uuidFilename + "_" +img.getOriginalFilename();

            img.transferTo(new File(uploadPath + "/" + resultFilename));

            news.setImg(resultFilename);
        }
        newsService.save(news);

        return "redirect:/news";
    }

    @GetMapping("/edit/{id}")
    public String getNewsEditPage(@PathVariable("id") News news,
                                  Model model
    ) {
        model.addAttribute("news", news);
        return "newsEdit";
    }

    @PostMapping("/edit")
    public String uploadNews(@RequestParam("id") Long id,
                             @RequestParam("title") String title,
                             @RequestParam("description") String description,
                             @RequestParam("img") MultipartFile img
    ) throws IOException {
        News news = newsService.findById(id);

        news.setTitle(title);
        news.setDescription(description);

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String author = auth.getName();

        news.setAuthor(author);

        SimpleDateFormat formatter = new SimpleDateFormat("dd.MM.yyyy");
        String currentDate = formatter.format(new Date());

        news.setDate(currentDate);

        if (!img.isEmpty()) {
            String uuidFilename = UUID.randomUUID().toString();
            String resultFilename = uuidFilename + "_" +img.getOriginalFilename();

            img.transferTo(new File(uploadPath + "/" + resultFilename));

            news.setImg(resultFilename);
        }
        newsService.save(news);

        return "redirect:/news";
    }

}
