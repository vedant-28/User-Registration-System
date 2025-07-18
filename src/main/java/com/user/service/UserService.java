package com.user.service;

import com.user.entity.User;

import java.util.List;
import java.util.Optional;

public interface UserService {
    public User registerUser(String username, String rawPassword, String city);
    public Optional<User> authenticateUser(String username, String rawPassword);
    public User getUserById(int userId);
    public List<User> getAllUsers();
}
