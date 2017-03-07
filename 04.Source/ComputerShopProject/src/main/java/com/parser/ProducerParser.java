package com.parser;

import com.dto.ProducerDTO;
import com.entity.Producer;
import com.service.IProducerService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by hiepnhse61627 on 07/03/2017.
 */
public class ProducerParser implements IProducerParser {

    @Autowired
    private IProducerService producerService;

    /**
     * [This method convert from ProducerDTO to Producer]
     * @param dto
     * @return entity
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public Producer parseToEntity(ProducerDTO dto) {
        Producer entity = new Producer();

        entity.setCd(dto.getProducerCd());
        entity.setName(dto.getProducerName());
        entity.setDescription(dto.getProducerDescription());
        entity.setEmail(dto.getProducerEmail());
        entity.setAddress(dto.getProducerAddress());
        entity.setPhone(dto.getProducerPhone());
        entity.setCreatedOn(dto.getCreatedOn());
        entity.setCreatedBy(dto.getCreatedBy());
        entity.setModifiedOn(dto.getModifiedOn());
        entity.setModifiedBy(dto.getModifiedBy());

        return entity;
    }

    /**
     * [This method convert from Producer to ProducerDTO]
     * @param entity
     * @return dto
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public ProducerDTO parseToDTO(Producer entity) {
        ProducerDTO dto = new ProducerDTO();

        dto.setProducerId(entity.getId());
        dto.setProducerCd(entity.getCd());
        dto.setProducerName(entity.getName());
        dto.setProducerDescription(entity.getDescription());
        dto.setProducerEmail(entity.getEmail());
        dto.setProducerAddress(entity.getAddress());
        dto.setProducerPhone(entity.getPhone());
        dto.setCreatedOn(entity.getCreatedOn());
        dto.setCreatedBy(entity.getCreatedBy());
        dto.setModifiedOn(entity.getModifiedOn());
        dto.setModifiedBy(entity.getModifiedBy());

        return dto;
    }

    /**
     * [This method call existed entity and set new data to this entity]
     * @param dto
     * @param id
     * @return entity
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public Producer updateEntity(ProducerDTO dto, Integer id) {
        Producer entity = producerService.findProductById(id);

        entity.setCd(dto.getProducerCd());
        entity.setName(dto.getProducerName());
        entity.setDescription(dto.getProducerDescription());
        entity.setEmail(dto.getProducerEmail());
        entity.setAddress(dto.getProducerAddress());
        entity.setPhone(dto.getProducerPhone());
        entity.setModifiedOn(dto.getModifiedOn());
        entity.setModifiedBy(dto.getModifiedBy());

        return entity;
    }

    /**
     * [This method convert from List<Producer> to List<ProducerDTO>]
     * @param listEntity
     * @return listDTO
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public List<ProducerDTO> parseToListDTO(List<Producer> listEntity) {
        List<ProducerDTO> listDTO = new ArrayList<>();

        if ((null != listEntity) && (!listEntity.isEmpty())) {
            for (Producer entity : listEntity) {
                ProducerDTO dto = parseToDTO(entity);
                listDTO.add(dto);
            }
        }

        return listDTO;
    }
}
