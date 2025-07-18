package com.user.dao;

import com.user.entity.User;
import jakarta.transaction.Transactional;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Repository
@Transactional
@EnableTransactionManagement
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public User save(User user) {
        this.sessionFactory.getCurrentSession().persist(user);
        return user;
    }

    @Override
    public User getUser(int userId) {
        return this.sessionFactory.getCurrentSession().find(User.class, userId);
    }

    @Override
    public List<User> getUsers() {
        return this.sessionFactory.getCurrentSession().createQuery("FROM User", User.class).getResultList();
    }

    @Override
    public Optional<User> findById(Long id) {
        return Optional.ofNullable(this.sessionFactory.getCurrentSession().find(User.class, id));
    }

    @Override
    public Optional<User> findByUsername(String userName) {
        String query = "FROM User WHERE username = :userName";
        return this.sessionFactory.getCurrentSession()
                                  .createQuery(query, User.class)
                                  .setParameter("userName", userName)
                                  .uniqueResultOptional();
    }
}
