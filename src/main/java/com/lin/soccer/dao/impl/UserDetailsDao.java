package com.lin.soccer.dao.impl;

import com.lin.soccer.model.UserDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDetailsDao extends JpaRepository< UserDetails, Long>{
}
