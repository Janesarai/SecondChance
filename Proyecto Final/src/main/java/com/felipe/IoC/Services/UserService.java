package com.felipe.IoC.Services;

import com.felipe.IoC.Models.User;
import com.felipe.IoC.Repositories.UserRepository;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService extends BaseService<User>{
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        super(userRepository);
        this.userRepository = userRepository;
    }

//-----------------------------------  -------------------------------

    public User findUserById(Long id) {
        Optional<User> u = userRepository.findById(id);
        if(u.isPresent()) {
            return u.get();
        } else {
            return null;
        }
    }

    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public boolean duplicatedUser(String email){
        User u = userRepository.findByEmail(email);
        if (u == null) {
            return false;
        } else {
            return true;
        }
    }

    //----------------------------------- Registro y Login------------------------------------------

    public User createUser(User u) {
        return userRepository.save(u);
    }

    public User registerUser(User user) {
        String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        user.setPassword(hashed);
        return userRepository.save(user);
    }

    public boolean authenticateUser(String email, String password) {
        User user = userRepository.findByEmail(email);
        if(user == null) {
            return false;
        } else {
            if(BCrypt.checkpw(password, user.getPassword())) {
                return true;
            } else {
                return false;
            }
        }
    }

}
