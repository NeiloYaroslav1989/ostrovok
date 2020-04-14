package ua.neilo.ostrovok.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.neilo.ostrovok.domain.Group;
import ua.neilo.ostrovok.repository.GroupRepo;

import java.util.List;

@Service
public class GroupService {
    private final GroupRepo groupRepo;

    public GroupService(GroupRepo groupRepo) {
        this.groupRepo = groupRepo;
    }

    public Group findById(Long id) {
        return groupRepo.findById(id).orElse(null);
    }

    public List<Group> findAll() {
        return groupRepo.findAll();
    }

    public void save(Group group) {
        groupRepo.save(group);
    }

    public void deleteById(Long id) {
        groupRepo.deleteById(id);
    }

    public Group findByTitle(String title) {
        return groupRepo.findByTitle(title);
    }
}
