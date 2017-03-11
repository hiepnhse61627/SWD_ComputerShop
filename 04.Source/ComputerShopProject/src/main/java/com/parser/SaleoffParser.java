package com.parser;

import com.dto.SaleoffDTO;
import com.entity.Saleoff;
import com.service.ISaleoffService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by hiepnhse61627 on 10/03/2017.
 */
public class SaleoffParser implements ISaleoffParser {

    @Autowired
    ISaleoffService saleoffService;

    /**
     * [This method convert from SaleoffDTO to Saleoff]
     * @param dto
     * @return entity
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public Saleoff parseToEntiy(SaleoffDTO dto) {
        Saleoff entity = new Saleoff();

        entity.setCd(dto.getSaleOffCd());
        entity.setSalePercent(dto.getSalePercent());
        entity.setDescription(dto.getDescription());
        entity.setDateFrom(dto.getDateFrom());
        entity.setDateTo(dto.getDateTo());
        entity.setCreatedOn(dto.getCreatedOn());
        entity.setCreatedBy(dto.getCreatedBy());
        entity.setModifiedOn(dto.getModifiedOn());
        entity.setModifiedBy(dto.getModifiedBy());

        return entity;
    }

    /**
     * [This method convert from Saleoff to SaleoffDTO]
     * @param entity
     * @return dto
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public SaleoffDTO parseToDTO(Saleoff entity) {
        SaleoffDTO dto = new SaleoffDTO();

        dto.setSaleOffId(entity.getId());
        dto.setSaleOffCd(entity.getCd());
        dto.setSalePercent(entity.getSalePercent());
        dto.setDescription(entity.getDescription());
        dto.setDateFrom(entity.getDateFrom());
        dto.setDateTo(entity.getDateTo());
        dto.setCreatedOn(entity.getCreatedOn());
        dto.setCreatedBy(entity.getCreatedBy());
        dto.setModifiedOn(entity.getModifiedOn());
        dto.setModifiedBy(entity.getModifiedBy());

        return dto;
    }

    @Override
    public Saleoff updateEntity(SaleoffDTO dto, Integer id) {
        Saleoff entity = saleoffService.findSaleoffById(id);

        entity.setCd(dto.getSaleOffCd());
        entity.setSalePercent(dto.getSalePercent());
        entity.setDescription(dto.getDescription());
        entity.setDateFrom(dto.getDateFrom());
        entity.setDateTo(dto.getDateTo());
        entity.setModifiedOn(dto.getModifiedOn());
        entity.setModifiedBy(dto.getModifiedBy());

        return entity;
    }

    /**
     * [This method convert from List<Saleoff> to List<SaleoffDTO>]
     * @param listEntity
     * @return listDTO
     * @author HiepNH [created on 07/03/2017]
     */
    @Override
    public List<SaleoffDTO> parseToListDTO(List<Saleoff> listEntity) {
        List<SaleoffDTO> listDTO = new ArrayList<>();

        if ((null != listEntity) && (!listEntity.isEmpty())) {
            for (Saleoff entity : listEntity) {
                SaleoffDTO dto = parseToDTO(entity);
                listDTO.add(dto);
            }
        }

        return listDTO;
    }
}
