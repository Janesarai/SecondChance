package com.felipe.IoC.Repositories;

import com.felipe.IoC.Models.User;
import org.springframework.stereotype.Repository;


@Repository
public interface UserRepository extends BaseRepository <User> {
    User findByEmail(String email);
}
