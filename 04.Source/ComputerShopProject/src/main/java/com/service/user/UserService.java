package com.service.user;

import com.dto.UserDTO;
import com.entity.User;
import com.repository.UserRepository;
import com.util.UserUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by MinhQuy on 3/20/2017.
 */
@Service
public class UserService implements IUserService {
    @Autowired
    UserRepository userRepository;

    @Override
    public UserDTO createUser(UserDTO dto) {
        checkNullForUserDTO(dto);
        User user = UserUtil.convertDTOToEntity(dto);
        User savedUser = userRepository.save(user);
        return UserUtil.convertEntityToDTO(savedUser);
    }

    @Override
    public UserDTO updateUser(UserDTO dto) {
        User user = userRepository.findUserByUsername(dto.getUsername());
        if (dto.getFirstname() != null) {
            user.setFirstname(dto.getFirstname());
        }
        if (dto.getLastname() != null) {
            user.setLastname(dto.getLastname());
        }
        if (dto.getCreditCardNo() != null) {
            user.setCreditCardNo(dto.getCreditCardNo());
        }
        if (dto.getPhone() != null) {
            user.setPhone(dto.getPhone());
        }
        if (dto.getAddress() != null) {
            user.setAddress(dto.getAddress());
        }
        if (dto.getEmail() != null) {
            user.setEmail(dto.getEmail());
        }
        if (dto.getModifiedBy() != null) {
            user.setModifiedBy(dto.getModifiedBy());
        }
        user.setModifiedOn(new Date());
        user.setIsVip(dto.getVip());
        return null;
    }

    @Override
    public Integer removeUser(Integer id) {
        User user = findUserById(id);
        userRepository.delete(user);
        return id;
    }

    @Override
    public List<UserDTO> getListUser() {
        List<User> userList = userRepository.findAll();
        List<UserDTO> userDTOList = new ArrayList<>();
        if (!userList.isEmpty()) {
            for (User user : userList) {
                UserDTO userDTO = UserUtil.convertEntityToDTO(user);
                userDTOList.add(userDTO);
            }
        }
        return userDTOList;
    }

    @Override
    public UserDTO findUserDTOById(Integer id) {
        User user = findUserById(id);
        return UserUtil.convertEntityToDTO(user);
    }

    @Override
    public User findUserById(Integer id) {
        User user = userRepository.findOne(id);
        if (user != null) {
            return user;
        } else {
            throw new EntityNotFoundException("Not found user have userId: " + id);
        }

    }

    @Override
    public UserDTO findUserDTOByUsername(String username) {
        User user = userRepository.findUserByUsername(username);
        if (user != null) {
            return UserUtil.convertEntityToDTO(user);
        } else {
            throw new EntityNotFoundException("Not found user have username: " + username);
        }
    }

    @Override
    public User checkLogin(String username, String password) {
        User user = userRepository.findUserByUsernameAndPassword(username, password);
        if (user != null) {
            return user;
        }
        return null;
    }

    private void checkNullForUserDTO(UserDTO userDTO) {
        if (userDTO.getUsername() == null) {
            throw new IllegalArgumentException("Username must be not null");
        }
        if (userDTO.getPassword() == null) {
            throw new IllegalArgumentException("Password must be not null");
        }
    }
}
