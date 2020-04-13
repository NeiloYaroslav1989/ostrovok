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

    public Group findGroupById(Long id) {
        return groupRepo.getOne(id);
    }

    public List<Group> findAllGroups() {
        return groupRepo.findAll();
    }

    public void saveGroup(Group group) {
        groupRepo.save(group);
    }

    public void deleteGroupById(Long id) {
        groupRepo.deleteById(id);
    }

    public Group findGroupByTitle(String title) {
        return groupRepo.findByTitle(title);
    }
}
