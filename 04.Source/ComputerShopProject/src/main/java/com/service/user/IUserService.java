package com.service.user;

import com.dto.UserDTO;
import com.entity.User;

import java.util.List;

/**
 * Created by hiepnhse61627 on 08/03/2017.
 */
public interface IUserService {

    public UserDTO createUser(UserDTO dto);

    public UserDTO updateUser(UserDTO dto);

    public Integer removeUser(Integer id);

    public List<UserDTO> getListUser();

    public UserDTO findUserDTOById(Integer id);

    public User findUserById(Integer id);

    public UserDTO findUserDTOByUsername(String username);

    public User checkLogin(String username, String password);
}
