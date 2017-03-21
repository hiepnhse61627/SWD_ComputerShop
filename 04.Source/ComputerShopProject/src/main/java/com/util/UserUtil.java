package com.util;

import com.dto.UserDTO;
import com.entity.User;

import java.util.Date;

/**
 * Created by MinhQuy on 3/12/2017.
 */
public class UserUtil {
    public static User convertDTOToEntity(UserDTO userDTO) {
        User user = new User();
        user.setUsername(userDTO.getUsername());
        user.setPassword(userDTO.getPassword());
        if (userDTO.getFirstname() != null) {
            user.setFirstname(userDTO.getFirstname());
        }
        if (userDTO.getLastname() != null) {
            user.setLastname(userDTO.getLastname());
        }
        if (userDTO.getEmail() != null) {
            user.setEmail(userDTO.getEmail());
        }
        if (userDTO.getAddress() != null) {
            user.setAddress(userDTO.getAddress());
        }
        if (userDTO.getPhone() != null) {
            user.setPhone(userDTO.getPhone());
        }
        if (userDTO.getCreditCardNo() != null) {
            user.setCreditCardNo(userDTO.getCreditCardNo());
        }
        if (userDTO.getModifiedBy() != null) {
            user.setModifiedBy(userDTO.getModifiedBy());
        }
        user.setIsVip(userDTO.getVip());
        user.setIsAdmin(userDTO.getAdmin());
        user.setCreatedOn(new Date());
        user.setModifiedOn(new Date());
        return user;
    }

    public static UserDTO convertEntityToDTO(User user) {
        UserDTO userDTO = new UserDTO();
        userDTO.setUserId(user.getId());
        userDTO.setUsername(user.getUsername());
        userDTO.setPassword(user.getPassword());
        if (user.getFirstname() != null) {
            userDTO.setFirstname(user.getFirstname());
        }
        if (user.getLastname() != null) {
            userDTO.setLastname(user.getLastname());
        }
        if (user.getEmail() != null) {
            userDTO.setEmail(user.getEmail());
        }
        if (user.getAddress() != null) {
            userDTO.setAddress(user.getAddress());
        }
        if (user.getPhone() != null) {
            userDTO.setPhone(user.getPhone());
        }
        if (user.getCreditCardNo() != null) {
            userDTO.setCreditCardNo(user.getCreditCardNo());
        }
        userDTO.setVip(user.getIsVip());
        userDTO.setAdmin(user.getIsAdmin());
        userDTO.setCreatedOn(user.getCreatedOn());
        userDTO.setModifiedOn(user.getModifiedOn());
        if (user.getModifiedBy() != null) {
            userDTO.setModifiedBy(user.getModifiedBy());
        }
        return userDTO;
    }
}
