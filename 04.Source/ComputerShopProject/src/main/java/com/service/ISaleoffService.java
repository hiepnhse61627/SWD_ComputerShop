package com.service;

import com.dto.SaleoffDTO;
import com.entity.Saleoff;

import java.util.List;

/**
 * Created by hiepnhse61627 on 10/03/2017.
 */
public interface ISaleoffService {

    public SaleoffDTO createSaleoff(SaleoffDTO dto);

    public SaleoffDTO updateSaleoff(SaleoffDTO dto);

    public void removeSaleoff(Integer id);

    public List<SaleoffDTO> getListSaleoff();

    public SaleoffDTO findSaleoffDTOById(Integer id);

    public Saleoff findSaleoffById(Integer id);
}
