package com.example.softweb.Repository;

import com.example.softweb.Model.Role;
import com.example.softweb.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByLogin(String login);
}
