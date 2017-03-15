package com.util;

import com.dto.SaleoffDTO;
import com.entity.Saleoff;

import java.util.Date;

/**
 * Created by MinhQuy on 3/12/2017.
 */
public class SaleOffUtil {
    public static SaleoffDTO convertEntityToDTO(Saleoff saleoff) {
        SaleoffDTO saleoffDTO = new SaleoffDTO();
        saleoffDTO.setSaleOffId(saleoff.getId());
        saleoffDTO.setSaleOffCd(saleoff.getCd());
        saleoffDTO.setSalePercent(saleoff.getSalePercent());
        saleoffDTO.setDateFrom(saleoff.getDateFrom());
        saleoffDTO.setDateTo(saleoff.getDateTo());
        if (saleoff.getDescription() != null) {
            saleoffDTO.setDescription(saleoff.getDescription());
        }
        if (saleoff.getCreatedBy() != null) {
            saleoffDTO.setCreatedBy(saleoff.getCreatedBy());
        }
        saleoffDTO.setCreatedOn(saleoff.getCreatedOn());
        if (saleoff.getModifiedBy() != null) {
            saleoffDTO.setModifiedBy(saleoff.getModifiedBy());
        }
        saleoffDTO.setModifiedOn(saleoff.getModifiedOn());
        return saleoffDTO;
    }

    public static Saleoff convertDTOToEntity(SaleoffDTO saleoffDTO) {
        Saleoff saleoff = new Saleoff();
        saleoff.setCd(saleoffDTO.getSaleOffCd());
        saleoff.setSalePercent(saleoffDTO.getSalePercent());
        saleoff.setDateFrom(saleoffDTO.getDateFrom());
        saleoff.setDateTo(saleoffDTO.getDateTo());
        if (saleoffDTO.getDescription() != null) {
            saleoff.setDescription(saleoffDTO.getDescription());
        }
        if (saleoffDTO.getModifiedBy() != null) {
            saleoff.setModifiedBy(saleoffDTO.getModifiedBy());
        }
        saleoff.setModifiedOn(new Date());
        if (saleoffDTO.getCreatedBy() != null) {
            saleoff.setCreatedBy(saleoffDTO.getCreatedBy());
        }
        saleoff.setCreatedOn(new Date());
        return saleoff;
    }
}
