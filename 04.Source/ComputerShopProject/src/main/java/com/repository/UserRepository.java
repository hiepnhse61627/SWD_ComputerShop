package com.repository;

import com.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by hiepnhse61627 on 08/03/2017.
 */
public interface UserRepository extends JpaRepository<User, Integer> {

}
