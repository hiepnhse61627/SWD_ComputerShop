package com.repository;

import com.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Minh Quy on 3/2/2017.
 */
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
}
