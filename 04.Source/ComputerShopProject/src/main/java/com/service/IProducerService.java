package com.service;

import com.dto.ProducerDTO;
import com.entity.Producer;

import java.util.List;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public interface IProducerService {

    public ProducerDTO createProducer(ProducerDTO dto);

    public ProducerDTO updateProducer(ProducerDTO dto);

    public void removeProducer(Integer id);

    public List<ProducerDTO> getListProducer();

    public ProducerDTO findProductDTOById(Integer id);

    public Producer findProductById(Integer id);
}
