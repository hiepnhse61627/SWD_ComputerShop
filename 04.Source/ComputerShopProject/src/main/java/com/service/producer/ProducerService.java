package com.service.producer;

import com.dto.ProducerDTO;
import com.entity.Producer;
import com.repository.ProducerRepository;
import com.util.ProducerUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by MinhQuy on 3/12/2017.
 */
@Service
public class ProducerService implements IProducerService {

    @Autowired
    ProducerRepository producerRepository;

    @Override
    public ProducerDTO createProducer(ProducerDTO producerDTO) {
        checkNullInProducerDTO(producerDTO);
        checkDuplicateCdAndNameWhenInsert(producerDTO);
        Producer producer = ProducerUtil.convertDTOToEntity(producerDTO);
        Producer savedProducer = producerRepository.save(producer);
        return ProducerUtil.convertEntityToDTO(savedProducer);
    }

    @Override
    public ProducerDTO updateProducer(ProducerDTO producerDTO) {
        Producer producer = findProducerEntityByProducerCode(producerDTO.getProducerCd());
        checkDuplicateNameWhenUpdate(producerDTO);
        if (producerDTO.getProducerName() != null) {
            producer.setName(producerDTO.getProducerName());
        }
        if (producerDTO.getProducerAddress() != null) {
            producer.setAddress(producerDTO.getProducerAddress());
        }
        if (producerDTO.getProducerEmail() != null) {
            producer.setEmail(producerDTO.getProducerEmail());
        }
        if (producerDTO.getProducerDescription() != null) {
            producer.setDescription(producerDTO.getProducerDescription());
        }
        if (producerDTO.getProducerPhone() != null) {
            producer.setPhone(producerDTO.getProducerPhone());
        }
        producer.setModifiedBy(producerDTO.getModifiedBy());
        producer.setModifiedOn(new Date());
        Producer updateProducer = producerRepository.save(producer);
        return ProducerUtil.convertEntityToDTO(updateProducer);
    }

    @Override
    public String removeProducer(String producerCode) {
        Producer producer = findProducerEntityByProducerCode(producerCode);
        producerRepository.delete(producer);
        return producerCode;
    }

    @Override
    public List<ProducerDTO> getListProducer() {
        List<Producer> producerList = producerRepository.findAll();
        List<ProducerDTO> producerDTOList = new ArrayList<>();
        if (!producerList.isEmpty()) {
            for (Producer producer : producerList) {
                ProducerDTO producerDTO = ProducerUtil.convertEntityToDTO(producer);
                producerDTOList.add(producerDTO);
            }
        }
        return producerDTOList;
    }

    @Override
    public Producer findProducerEntityByProducerCode(String producerCode) {
        Producer producer = producerRepository.findProducerByProducerCode(producerCode);
        if (producer != null) {
            return producer;
        } else {
            throw new EntityNotFoundException("Not found producer have producerCode: " + producerCode);
        }
    }

    @Override
    public ProducerDTO findProducerByProducerCode(String producerCode) {
        Producer producer = findProducerEntityByProducerCode(producerCode);
        return ProducerUtil.convertEntityToDTO(producer);
    }

    private void checkDuplicateCdAndNameWhenInsert(ProducerDTO producerDTO) {
        List<Producer> producerList = producerRepository.findAll();
        if (!producerList.isEmpty()) {
            for (Producer producer : producerList) {
                if (producerDTO.getProducerCd().equalsIgnoreCase(producer.getCd())) {
                    throw new IllegalArgumentException("Duplicate producer code: " + producerDTO.getProducerCd());
                }
                if (producerDTO.getProducerName().equalsIgnoreCase(producer.getName())) {
                    throw new IllegalArgumentException("Duplicate producer name: " + producerDTO.getProducerName());
                }
            }
        }
    }

    private void checkDuplicateNameWhenUpdate(ProducerDTO producerDTO) {
        if (producerDTO.getProducerName() != null) {
            List<Producer> producerList = producerRepository.findAll();
            if (!producerList.isEmpty()) {
                for (Producer producer : producerList) {
                    if (producerDTO.getProducerName().equalsIgnoreCase(producer.getName())
                            && !producerDTO.getProducerCd().equalsIgnoreCase(producer.getCd())) {
                        throw new IllegalArgumentException("Duplicate producer name: " + producerDTO.getProducerCd());
                    }
                }
            }
        }
    }

    private void checkNullInProducerDTO(ProducerDTO producerDTO) {
        if (producerDTO.getProducerCd() == null || producerDTO.getProducerCd().isEmpty()) {
            throw new IllegalArgumentException("Producer code must be not null");
        }
        if (producerDTO.getProducerName() == null || producerDTO.getProducerName().isEmpty()) {
            throw new IllegalArgumentException("Producer name must be not null");
        }
    }
}
