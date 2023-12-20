package org.example.service;

import org.example.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class UserServiceImp {

    private final UserService userService;

    @Autowired
    public UserServiceImp(UserService userService) {
        this.userService = userService;
    }
    public List<User> findAll() {
        return (List<User>) userService.findAll();
    }

    public void save(User user) {
        userService.save(user);
    }
    public void delete(User user) {
        userService.delete(user);
    }

    public void updateUser(User user) {
        userService.save(user);
    }

    public User findById(Long id) {
        return userService.findById(id).orElse(null);
    }
}
