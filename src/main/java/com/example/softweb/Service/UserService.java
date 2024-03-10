package com.example.softweb.Service;


import com.example.softweb.Model.Role;
import com.example.softweb.Model.User;
import com.example.softweb.Repository.RoleRepository;
import com.example.softweb.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class UserService implements UserDetailsService {

    UserRepository userRepository;
    RoleRepository roleRepository;
    @PersistenceContext
    private EntityManager entityManager;

    @Autowired
    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }
    @Override
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        User user = userRepository.findByLogin(login);

        if (login == null) {
            throw new UsernameNotFoundException("User not found");
        }

        return new org.springframework.security.core.userdetails.User(
                user.getLogin(),
                user.getPassword(),
                user.getRoles().stream()
                        .map(role -> new SimpleGrantedAuthority(role.getLogin()))
                        .collect(Collectors.toList())
        );
    }
    public User findUserById(Long id){
        Optional<User> user = userRepository.findById(id);
        return user.orElse(new User());
    }
    public List<User>allUsers(){
        return userRepository.findAll();
    }

    public boolean saveUser(User user) {
        User existingUser = userRepository.findByLogin(user.getLogin());

        if (existingUser != null) {
            return false;
        }

        // Используйте роли из базы данных, найденные по их именам
        Set<Role> userRoles = user.getRoles().stream()
                .map(role -> roleRepository.findByLogin(role.getLogin()))
                .collect(Collectors.toSet());

        // Установите роли для пользователя
        user.setRoles(userRoles);

        // Сохраните пользователя вместе с ролями
        userRepository.save(user);

        return true;
    }

    public boolean deleteUser(Long id){
        if(userRepository.findById(id).isPresent()){
            userRepository.deleteById(id);
            return true;
        }
        return false;
    }
    public List<User> usergtList(Long idMin) {
        return entityManager.createQuery("SELECT u FROM User u WHERE u.id > :paramId", User.class)
                .setParameter("paramId", idMin).getResultList();
    }
}