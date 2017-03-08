package com.parser;

import com.dto.UserDTO;
import com.entity.User;
import com.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by hiepnhse61627 on 08/03/2017.
 */
public class UserParser implements IUserParser {

    @Autowired
    IUserService userService;

    /**
     * [This method convert from UserDTO to User]
     * @param dto
     * @return entity
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public User parseToEntity(UserDTO dto) {
        User entity = new User();

        entity.setCd(dto.getUserCd());
        entity.setUsername(dto.getUsername());
        entity.setPassword(dto.getPassword());
        entity.setFirstname(dto.getFirstname());
        entity.setLastname(dto.getLastname());
        entity.setEmail(dto.getEmail());
        entity.setAddress(dto.getAddress());
        entity.setPhone(dto.getPhone());
        entity.setCreditCardNo(dto.getCreditCardNo());
        entity.setIsVip(dto.getVip());
        entity.setIsAdmin(dto.getAdmin());
        entity.setCreatedOn(dto.getCreatedOn());
        entity.setCreatedBy(dto.getCreatedBy());
        entity.setModifiedOn(dto.getModifiedOn());
        entity.setModifiedBy(dto.getModifiedBy());

        return entity;
    }

    /**
     * [This method convert from User to UserDTO]
     * @param entity
     * @return dto
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public UserDTO parseToDTO(User entity) {
        UserDTO dto = new UserDTO();

        dto.setUserId(entity.getId());
        dto.setUserCd(entity.getCd());
        dto.setUsername(entity.getUsername());
        dto.setPassword(entity.getPassword());
        dto.setFirstname(entity.getFirstname());
        dto.setLastname(entity.getLastname());
        dto.setEmail(entity.getEmail());
        dto.setAddress(entity.getAddress());
        dto.setPhone(entity.getPhone());
        dto.setCreditCardNo(entity.getCreditCardNo());
        dto.setVip(entity.getIsVip());
        dto.setAdmin(entity.getIsAdmin());
        dto.setCreatedOn(entity.getCreatedOn());
        dto.setCreatedBy(entity.getCreatedBy());
        dto.setModifiedOn(entity.getModifiedOn());
        dto.setModifiedBy(entity.getModifiedBy());

        return dto;
    }

    /**
     * [This method call existed entity and set new data to this entity]
     * @param dto
     * @param id
     * @return entity
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public User updateEntity(UserDTO dto, Integer id) {
        User entity = userService.findUserById(id);

        entity.setCd(dto.getUserCd());
        entity.setUsername(dto.getUsername());
        entity.setPassword(dto.getPassword());
        entity.setFirstname(dto.getFirstname());
        entity.setLastname(dto.getLastname());
        entity.setEmail(dto.getEmail());
        entity.setAddress(dto.getAddress());
        entity.setPhone(dto.getPhone());
        entity.setCreditCardNo(dto.getCreditCardNo());
        entity.setIsVip(dto.getVip());
        entity.setIsAdmin(dto.getAdmin());
        entity.setModifiedOn(dto.getModifiedOn());
        entity.setModifiedBy(dto.getModifiedBy());

        return entity;
    }

    /**
     * [This method convert from List<User> to List<UserDTO>]
     * @param listEntity
     * @return listDTO
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public List<UserDTO> parseToListDTO(List<User> listEntity) {
        List<UserDTO> listDTO = new ArrayList<>();

        if ((null != listEntity) && (!listEntity.isEmpty())) {
            for (User entity : listEntity) {
                UserDTO dto = parseToDTO(entity);
                listDTO.add(dto);
            }
        }

        return listDTO;
    }
}
