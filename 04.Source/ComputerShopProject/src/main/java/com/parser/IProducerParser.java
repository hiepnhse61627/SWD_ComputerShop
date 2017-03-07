package com.parser;

import com.dto.ProducerDTO;
import com.entity.Producer;

import java.util.List;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public interface IProducerParser {

    public Producer parseToEntity(ProducerDTO dto);

    public ProducerDTO parseToDTO(Producer entity);

    public List<ProducerDTO> parseToListDTO(List<Producer> listEntity);

    public Producer updateEntity(ProducerDTO dto, Integer id);
}
