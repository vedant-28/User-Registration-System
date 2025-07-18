package com.user.service;

import com.user.entity.User;
import org.springframework.ui.Model;

import java.util.List;
import java.util.Optional;

public interface UserService {
    public User registerUser(int id, String username, String rawPassword, String city);
    public Optional<User> authenticateUser(String username, String rawPassword);
    public User getUserById(int userId);
    public List<User> getAllUsers();
}
