package ua.neilo.ostrovok.domain;

import lombok.Data;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "usr")
@Data
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String username;

    private String password;

    private String confirmPassword;

    private String email;

    @ElementCollection(targetClass = Role.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"))
    @Enumerated(EnumType.STRING)
    private Set<Role> roles;

    public boolean isTeacher() {
        return roles.contains(Role.TEACHER);
    }
    public boolean isAdmin() {
        return roles.contains(Role.ADMIN);
    }

    private boolean active;


}
