package ua.neilo.ostrovok.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.neilo.ostrovok.domain.News;

public interface NewsRepo extends JpaRepository<News, Long> {
}
