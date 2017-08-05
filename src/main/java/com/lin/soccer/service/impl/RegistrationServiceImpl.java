package com.lin.soccer.service.impl;

import com.lin.soccer.dao.impl.UserDetailsDao;
import com.lin.soccer.model.UserDetails;
import com.lin.soccer.service.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RegistrationServiceImpl implements RegistrationService {
    @Autowired
    private UserDetailsDao userDetailsDao;

    public UserDetails saveUser(UserDetails userDetails){
        return userDetailsDao.save(userDetails);

    }

    public List<UserDetails> findAllUsers(){
        return userDetailsDao.findAll();
    }

    public UserDetails findOne(Long userId){
        return userDetailsDao.findOne(userId);
    }

    public void delete(Long userId){
        userDetailsDao.delete(userId);
    }

}
