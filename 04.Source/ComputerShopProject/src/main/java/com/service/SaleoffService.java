package com.service;

import com.dto.SaleoffDTO;
import com.entity.Saleoff;
import com.parser.ISaleoffParser;
import com.repository.SaleoffRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by hiepnhse61627 on 10/03/2017.
 */
public class SaleoffService implements ISaleoffService {

    @Autowired
    SaleoffRepository saleoffRepository;

    @Autowired
    ISaleoffParser saleoffParser;

    @Override
    public SaleoffDTO createSaleoff(SaleoffDTO dto) {
        Saleoff entity = saleoffParser.parseToEntiy(dto);
        Saleoff saved = saleoffRepository.save(entity);

        return saleoffParser.parseToDTO(saved);
    }

    @Override
    public SaleoffDTO updateSaleoff(SaleoffDTO dto) {
        Saleoff entity = saleoffParser.updateEntity(dto, dto.getSaleOffId());
        Saleoff saved = saleoffRepository.save(entity);

        return saleoffParser.parseToDTO(saved);
    }

    @Override
    public void removeSaleoff(Integer id) {
        saleoffRepository.delete(id);
    }

    @Override
    public List<SaleoffDTO> getListSaleoff() {
        return saleoffParser.parseToListDTO(saleoffRepository.findAll());
    }

    @Override
    public SaleoffDTO findSaleoffDTOById(Integer id) {
        return saleoffParser.parseToDTO(saleoffRepository.findOne(id));
    }

    @Override
    public Saleoff findSaleoffById(Integer id) {
        return saleoffRepository.findOne(id);
    }
}
