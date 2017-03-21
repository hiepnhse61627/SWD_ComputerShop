package com.controller;

import com.dto.UserDTO;
import com.service.user.IUserService;
import com.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * Created by MinhQuy on 3/20/2017.
 */
@RestController
public class UserController {
    @Autowired
    IUserService userService;

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/user-checkLogin", method = RequestMethod.GET)
    public Map<String, Object> checkLogin(@RequestParam("username") String username,
                                          @RequestParam("password") String password) {
        return ResponseUtil.responseObject(userService.checkLogin(username, password));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public Map<String, Object> getAllUser() {
        return ResponseUtil.responseObject(userService.getListUser());
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/user", method = RequestMethod.POST)
    public Map<String, Object> createNewUser(UserDTO userDTO) {
        return ResponseUtil.responseObject(userService.createUser(userDTO));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/user-update", method = RequestMethod.POST)
    public Map<String, Object> updateUser(UserDTO userDTO) {
        return ResponseUtil.responseObject(userService.updateUser(userDTO));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/user-removeByUsername", method = RequestMethod.DELETE)
    public Map<String, Object> removeUser(@RequestParam("userId") Integer id) {
        return ResponseUtil.responseObject(userService.removeUser(id));
    }
}
