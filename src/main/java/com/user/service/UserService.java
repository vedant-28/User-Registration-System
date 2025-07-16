package com.user.service;

import com.user.entity.User;

import java.util.Optional;

public interface UserService {
    public User registerUser(int id, String username, String rawPassword, String city);
    public Optional<User> authenticateUser(String username, String rawPassword);
}
