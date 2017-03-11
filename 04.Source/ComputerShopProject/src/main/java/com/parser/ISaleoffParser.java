package com.parser;

import com.dto.SaleoffDTO;
import com.entity.Saleoff;

import java.util.List;

/**
 * Created by hiepnhse61627 on 10/03/2017.
 */
public interface ISaleoffParser {

    public Saleoff parseToEntiy(SaleoffDTO dto);

    public SaleoffDTO parseToDTO(Saleoff entity);

    public Saleoff updateEntity(SaleoffDTO dto, Integer id);

    public List<SaleoffDTO> parseToListDTO(List<Saleoff> listEntity);
}
