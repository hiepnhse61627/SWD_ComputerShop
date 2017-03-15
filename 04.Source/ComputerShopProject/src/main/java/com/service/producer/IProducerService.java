package com.service.producer;

import com.dto.ProducerDTO;
import com.entity.Producer;

import java.util.List;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public interface IProducerService {

    public ProducerDTO createProducer(ProducerDTO producerDTO);

    public ProducerDTO updateProducer(ProducerDTO producerDTO);

    public String removeProducer(String producerCode);

    public List<ProducerDTO> getListProducer();

    public Producer findProducerByProducerCode(String producerCode);

}
