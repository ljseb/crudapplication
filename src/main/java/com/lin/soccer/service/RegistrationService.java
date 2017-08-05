package com.lin.soccer.service;

import com.lin.soccer.model.UserDetails;
import org.apache.catalina.User;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public interface RegistrationService {
    UserDetails saveUser(UserDetails user);

    List<UserDetails> findAllUsers();

    UserDetails findOne(Long userId);

    void delete(Long userId);
}
