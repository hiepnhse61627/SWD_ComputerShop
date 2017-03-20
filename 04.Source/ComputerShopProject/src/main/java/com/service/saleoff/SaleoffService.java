package com.service.saleoff;

import com.dto.SaleoffDTO;
import com.entity.Saleoff;
import com.repository.SaleoffRepository;
import com.util.SaleOffUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by MinhQuy on 3/19/2017.
 */
@Service
public class SaleoffService implements ISaleoffService {
    @Autowired
    SaleoffRepository saleoffRepository;

    @Override
    public SaleoffDTO createSaleoff(SaleoffDTO dto) {
        checkNullForInputSaleOffDTO(dto);
        Saleoff saleoff = SaleOffUtil.convertDTOToEntity(dto);
        Saleoff savedSaleOff = saleoffRepository.save(saleoff);
        return SaleOffUtil.convertEntityToDTO(savedSaleOff);
    }

    @Override
    public SaleoffDTO updateSaleoff(SaleoffDTO dto) {
        checkNullForInputSaleOffDTO(dto);
        Saleoff saleoff = saleoffRepository.findSaleOffBySaleOffCd(dto.getSaleOffCd());
        saleoff.setSalePercent(dto.getSalePercent());
        saleoff.setDateFrom(dto.getDateFrom());
        saleoff.setDateTo(dto.getDateTo());
        if (dto.getDescription() != null) {
            saleoff.setDescription(dto.getDescription());
        }
        if (dto.getModifiedBy() != null) {
            saleoff.setModifiedBy(dto.getModifiedBy());
        }
        saleoff.setModifiedOn(dto.getModifiedOn());
        Saleoff updateSaleOff = saleoffRepository.save(saleoff);
        return SaleOffUtil.convertEntityToDTO(updateSaleOff);
    }

    @Override
    public String removeSaleoff(String saleOffCd) {
        Saleoff saleoff = findSaleoffEntityBySaleOffCd(saleOffCd);
        saleoffRepository.delete(saleoff);
        return saleOffCd;
    }

    @Override
    public List<SaleoffDTO> getListSaleoff() {
        List<Saleoff> saleoffList = saleoffRepository.findAll();
        List<SaleoffDTO> saleoffDTOList = new ArrayList<>();
        if (!saleoffList.isEmpty()) {
            for (Saleoff saleOff : saleoffList) {
                SaleoffDTO saleoffDTO = SaleOffUtil.convertEntityToDTO(saleOff);
                saleoffDTOList.add(saleoffDTO);
            }
        }
        return saleoffDTOList;
    }

    @Override
    public Saleoff findSaleoffEntityBySaleOffCd(String saleOffCd) {
        Saleoff saleoff = saleoffRepository.findSaleOffBySaleOffCd(saleOffCd);
        if (saleoff != null) {
            return saleoff;
        } else {
            throw new EntityNotFoundException("Not found sale off have saleOffCd " + saleOffCd);
        }
    }

    @Override
    public SaleoffDTO findSaleOffBySaleOffCd(String saleOffCd) {
        Saleoff saleoff = findSaleoffEntityBySaleOffCd(saleOffCd);
        return SaleOffUtil.convertEntityToDTO(saleoff);
    }

    private void checkNullForInputSaleOffDTO(SaleoffDTO saleoffDTO) {
        if (saleoffDTO.getSaleOffCd() == null) {
            throw new IllegalArgumentException("Sale off cd must be not null");
        }
        if (saleoffDTO.getDateFrom() == null) {
            throw new IllegalArgumentException("Date from of sale off must be not null");
        }
        if (saleoffDTO.getDateTo() == null) {
            throw new IllegalArgumentException("Date to of sale off must be not null");
        }
    }

}
