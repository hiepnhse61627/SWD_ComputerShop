package com.parser;

import com.dto.UserDTO;
import com.entity.User;

import java.util.List;

/**
 * Created by hiepnhse61627 on 08/03/2017.
 */
public interface IUserParser {

    public User parseToEntity(UserDTO dto);

    public UserDTO parseToDTO(User entity);

    public User updateEntity(UserDTO dto, Integer id);

    public List<UserDTO> parseToListDTO(List<User> listEntity);
}
