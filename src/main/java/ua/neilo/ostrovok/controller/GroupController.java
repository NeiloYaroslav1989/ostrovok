package ua.neilo.ostrovok.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.neilo.ostrovok.domain.Group;
import ua.neilo.ostrovok.service.GroupService;

import java.util.List;

@Controller
@PreAuthorize("hasAuthority('ADMIN')")
//@PreAuthorize("hasAuthority('TEACHER')")
public class GroupController {
    private final GroupService groupService;

    public GroupController(GroupService groupService) {
        this.groupService = groupService;
    }

    @GetMapping("/groups")
    public String getGroupList(Model model) {
        List<Group> groups = groupService.findAll();
        model.addAttribute("groups", groups);
        return "groupList";
    }

    @PostMapping("/groups")
    public String groupAdd(Model model, Group group) {
        Group groupFromDb = groupService.findByTitle(group.getTitle());

        if (groupFromDb != null) {
            model.addAttribute("message", "Group already exists!");
            return "groupAdd";
        }

        groupService.save(group);

        return "redirect:/groups";
    }

    @GetMapping("/addGroup")
    public String getGroupAdd() {
        return "groupAdd";
    }

    @GetMapping("/groups/edit/{id}")
    public String getGroupEdit(@PathVariable("id") Long id, Model model) {
        Group group = groupService.findById(id);
        model.addAttribute("group", group);
        return "groupEdit";
    }

    @PostMapping("/groups/edit")
    public String updateGroup(@RequestParam("groupId") Long id,
                              @RequestParam("title") String title,
                              @RequestParam("teacher") String teacher,
                              Model model) {
        Group group = groupService.findById(id);

        group.setTitle(title);
        group.setTeacher(teacher);

        groupService.save(group);
        return "redirect:/groups";
    }

    @GetMapping("/groups/delete/{id}")
    public String userDelete(@PathVariable("id") Long id) {
        groupService.deleteById(id);
        return "redirect:/groups";
    }




}
