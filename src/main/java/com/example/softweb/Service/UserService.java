package com.example.softweb.Service;


import com.example.softweb.Model.Role;
import com.example.softweb.Model.User;
import com.example.softweb.Repository.RoleRepository;
import com.example.softweb.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class UserService implements UserDetailsService {

     UserRepository userRepository;
     RoleRepository roleRepository;

    @Autowired
    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
        User user = userRepository.findByLogin(username);
        if(user == null){
            throw new UsernameNotFoundException("User not found!");
        }
        return user;
    }
    public User findUserById(Long id){
        Optional<User> user = userRepository.findById(id);
        return user.orElse(new User());
    }
    public List<User>allUsers(){
        return userRepository.findAll();
    }
    public boolean saveUser(User user) {
        User existingUser = userRepository.findByLogin(user.getUsername());
        if (existingUser != null) {
            return false;
        }
        Set<Role> roles = new HashSet<>();
        roles.add(new Role("USER"));
        user.setRoles(roles);
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
}
