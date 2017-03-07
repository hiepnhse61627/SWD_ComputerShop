package com.service;

import com.dto.ProducerDTO;
import com.entity.Producer;
import com.parser.IProducerParser;
import com.repository.ProducerRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public class ProducerService implements IProducerService {

    @Autowired
    ProducerRepository producerRepository;

    @Autowired
    IProducerParser producerParser;

    @Override
    public ProducerDTO createProducer(ProducerDTO dto) {
        Producer entity = producerParser.parseToEntity(dto);
        Producer saved = producerRepository.save(entity);

        return producerParser.parseToDTO(saved);
    }

    @Override
    public ProducerDTO updateProducer(ProducerDTO dto) {
        Producer entity = producerParser.updateEntity(dto, dto.getProducerId());
        Producer saved = producerRepository.save(entity);

        return producerParser.parseToDTO(saved);
    }

    @Override
    public void removeProducer(Integer id) {
        producerRepository.delete(id);
    }

    @Override
    public List<ProducerDTO> getListProducer() {
        return producerParser.parseToListDTO(producerRepository.findAll());
    }

    @Override
    public ProducerDTO findProductDTOById(Integer id) {
        return producerParser.parseToDTO(producerRepository.findOne(id));
    }

    @Override
    public Producer findProductById(Integer id) {
        return producerRepository.findOne(id);
    }
}
