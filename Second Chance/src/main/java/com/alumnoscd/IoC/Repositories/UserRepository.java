package com.alumnoscd.IoC.Repositories;

import com.alumnoscd.IoC.Models.User;
import org.springframework.stereotype.Repository;


@Repository
public interface UserRepository extends BaseRepository <User> {
    User findByEmail(String email);
}
