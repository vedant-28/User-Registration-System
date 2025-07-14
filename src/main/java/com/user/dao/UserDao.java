package com.user.dao;

import com.user.entity.User;
import java.util.Optional;

public interface UserDao {
    public void save(User user);
    public Optional<User> findById(Long id);
    public Optional<User> findByUsername(String userName);
}
