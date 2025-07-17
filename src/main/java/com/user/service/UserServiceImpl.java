package com.user.service;

import com.user.dao.UserDao;
import com.user.entity.User;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.ui.Model;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
@EnableTransactionManagement
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDaoImpl;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Override
    public User registerUser(int id, String username, String rawPassword, String city) {
        String hashPassword = passwordEncoder.encode(rawPassword);
        return userDaoImpl.save(new User(id, username, hashPassword, city));
    }

    @Override
    public Optional<User> authenticateUser(String username, String rawPassword) {
        return userDaoImpl.findByUsername(username)
                .filter(user -> passwordEncoder.matches(rawPassword, user.getPasswordHash()));
    }

    @Override
    public User getUserById(int userId, Model model) {
        User user = userDaoImpl.getUser(userId);
        model.addAttribute(user);
        return user;
    }

    @Override
    public List<User> getAllUsers(Model model) {
        List<User> userList = userDaoImpl.getUsers();
        model.addAttribute(userList);
        return userList;
    }
}
