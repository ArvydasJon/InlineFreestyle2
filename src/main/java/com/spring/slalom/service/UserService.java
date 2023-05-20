package com.spring.slalom.service;

import com.spring.slalom.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
