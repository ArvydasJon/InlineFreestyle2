package com.spring.slalom.service;

public interface SecurityService {
    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
