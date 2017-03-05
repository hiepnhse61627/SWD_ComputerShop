package com.service;

import com.dto.UserDTO;
import com.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.repository.UserRepository;

/**
 * Created by Minh Quy on 3/2/2017.
 */
@Service
public class UserService {
    @Autowired
    UserRepository userRepository;

    public UserDTO createUser(UserDTO userDTO) {
        UserEntity userEntity = new UserEntity();
        userEntity.setUsername(userDTO.getUsername());
        userEntity.setPassword(userDTO.getPassword());
        UserEntity savedUser = userRepository.save(userEntity);
        return new UserDTO(savedUser.getUsername(), savedUser.getPassword());
    }
}
