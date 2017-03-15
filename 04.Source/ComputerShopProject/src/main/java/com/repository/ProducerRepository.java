package com.repository;

import com.entity.Producer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public interface ProducerRepository extends JpaRepository<Producer, Integer> {
    @Query("SELECT p FROM Producer p WHERE p.cd = :producerCode")
    public Producer findProducerByProducerCode(@Param("producerCode") String producerCode);
}
