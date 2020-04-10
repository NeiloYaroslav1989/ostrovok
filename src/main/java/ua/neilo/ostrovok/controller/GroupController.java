package ua.neilo.ostrovok.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.neilo.ostrovok.domain.Group;
import ua.neilo.ostrovok.domain.Role;
import ua.neilo.ostrovok.domain.User;
import ua.neilo.ostrovok.service.GroupService;

import java.util.Collections;
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
        List<Group> groups = groupService.findAllGroups();
        model.addAttribute("groups", groups);
        return "groupList";
    }

    @PostMapping("/groups")
    public String saveGroup(Model model, Group group) {
        Group groupFromDb = groupService.findGroupByTitleAndTime(group.getTitle(), group.getTime());

        if (groupFromDb != null) {
            model.addAttribute("message", "Group already exists!");
            return "groupAdd";
        }

        groupService.saveGroup(group);

        return "redirect:/groups";
    }

    @GetMapping("/addGroup")
    public String getGroupAdd() {
        return "groupAdd";
    }

    @GetMapping("/groups/edit/{id}")
    public String getGroupEdit(@PathVariable("id") Long id, Model model) {
        Group group = groupService.findGroupById(id);
        model.addAttribute("group", group);
        return "groupEdit";
    }

    @PostMapping("/groups/edit")
    public String updateGroup(@RequestParam("groupId") Long id,
                              @RequestParam("title") String title,
                              @RequestParam("time") String time,
                              @RequestParam("teacher") String teacher,
                              Model model) {
        Group group = groupService.findGroupById(id);

        group.setTitle(title);
        group.setTime(time);
        group.setTeacher(teacher);

        groupService.saveGroup(group);
        return "redirect:/groups";
    }

    @GetMapping("/groups/delete/{id}")
    public String userDelete(@PathVariable("id") Long id) {
        groupService.deleteGroupById(id);
        return "redirect:/groups";
    }




}
