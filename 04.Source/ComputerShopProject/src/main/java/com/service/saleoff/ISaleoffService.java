package com.service.saleoff;

import com.dto.SaleoffDTO;
import com.entity.Saleoff;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by hiepnhse61627 on 10/03/2017.
 */
@Service
public interface ISaleoffService {

    public SaleoffDTO createSaleoff(SaleoffDTO dto);

    public SaleoffDTO updateSaleoff(SaleoffDTO dto);

    public String removeSaleoff(String saleOffCd);

    public List<SaleoffDTO> getListSaleoff();

    public Saleoff findSaleoffEntityBySaleOffCd(String saleOffCd);

    public SaleoffDTO findSaleOffBySaleOffCd(String saleOffCd);

}
