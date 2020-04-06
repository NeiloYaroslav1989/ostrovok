package ua.neilo.ostrovok.domain;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    USER, TEACHER, ADMIN;


    @Override
    public String getAuthority() {
        return name();
    }
}
