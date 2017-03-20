package com.repository;

import com.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * Created by hiepnhse61627 on 08/03/2017.
 */
public interface UserRepository extends JpaRepository<User, Integer> {
    @Query(value = "SELECT u FROM User u WHERE u.username = :username")
    User findUserByUsername(@Param("username") String username);

    @Query(value = "SELECT u FROM User u WHERE u.username = :username AND u.password = :password")
    User findUserByUsernameAndPassword(@Param("username") String username, @Param("password") String password);
}
