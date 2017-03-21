package com.util;

import com.dto.ProducerDTO;
import com.entity.Producer;

import java.util.Date;

/**
 * Created by MinhQuy on 3/12/2017.
 */
public class ProducerUtil {
    public static ProducerDTO convertEntityToDTO(Producer producer) {
        ProducerDTO producerDTO = new ProducerDTO();
        producerDTO.setProducerId(producer.getId());
        producerDTO.setProducerCd(producer.getCd());
        producerDTO.setProducerName(producer.getName());
        if (producer.getDescription() != null) {
            producerDTO.setProducerDescription(producer.getDescription());
        }
        if (producer.getEmail() != null) {
            producerDTO.setProducerEmail(producer.getEmail());
        }
        if (producer.getAddress() != null) {
            producerDTO.setProducerAddress(producer.getAddress());
        }
        if (producer.getPhone() != null) {
            producerDTO.setProducerPhone(producer.getPhone());
        }
        if (producer.getCreatedBy() != null) {
            producerDTO.setCreatedBy(producer.getCreatedBy());
        }
        producerDTO.setCreatedOn(producer.getCreatedOn());
        if (producer.getModifiedBy() != null) {
            producerDTO.setModifiedBy(producer.getModifiedBy());
        }
        producerDTO.setModifiedOn(producer.getModifiedOn());
        return producerDTO;
    }

    public static Producer convertDTOToEntity(ProducerDTO producerDTO) {
        Producer producer = new Producer();
        producer.setCd(producerDTO.getProducerCd());
        producer.setName(producerDTO.getProducerName());
        if (producerDTO.getProducerDescription() != null) {
            producer.setDescription(producerDTO.getProducerDescription());
        }
        if (producerDTO.getProducerEmail() != null) {
            producer.setEmail(producerDTO.getProducerEmail());
        }
        if (producerDTO.getProducerAddress() != null) {
            producer.setAddress(producerDTO.getProducerAddress());
        }
        if (producerDTO.getProducerPhone() != null) {
            producer.setPhone(producerDTO.getProducerPhone());
        }
        if (producerDTO.getCreatedBy() != null) {
            producer.setCreatedBy(producerDTO.getCreatedBy());
        }
        producer.setCreatedOn(new Date());
        if (producerDTO.getModifiedBy() != null) {
            producer.setModifiedBy(producerDTO.getModifiedBy());
        }
        producer.setModifiedOn(new Date());
        return producer;
    }
}
