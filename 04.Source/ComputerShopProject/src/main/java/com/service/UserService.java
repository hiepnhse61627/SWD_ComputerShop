package com.service;

import com.dto.UserDTO;
import com.entity.User;
import com.parser.IUserParser;
import com.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by hiepnhse61627 on 08/03/2017.
 */
public class UserService implements IUserService {

    @Autowired
    UserRepository userRepository;

    @Autowired
    IUserParser userParser;

    @Override
    public UserDTO createUser(UserDTO dto) {
        User entity = userParser.parseToEntity(dto);
        User saved = userRepository.save(entity);

        return userParser.parseToDTO(saved);
    }

    @Override
    public UserDTO updateUser(UserDTO dto) {
        User entity = userParser.updateEntity(dto, dto.getUserId());
        User saved = userRepository.save(entity);

        return userParser.parseToDTO(saved);
    }

    @Override
    public void removeUser(Integer id) {
        userRepository.delete(id);
    }

    @Override
    public List<UserDTO> getListUser() {
        return userParser.parseToListDTO(userRepository.findAll());
    }

    @Override
    public UserDTO findUserDTOById(Integer id) {
        User entity = userRepository.findOne(id);

        return userParser.parseToDTO(entity);
    }

    @Override
    public User findUserById(Integer id) {
        return userRepository.findOne(id);
    }
}
