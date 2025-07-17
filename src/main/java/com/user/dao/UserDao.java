package com.user.dao;

import com.user.entity.User;

import java.util.List;
import java.util.Optional;

public interface UserDao {
    public User save(User user);
    public User getUser(int userId);
    public List<User> getUsers();
    public Optional<User> findById(Long id);
    public Optional<User> findByUsername(String userName);
}
