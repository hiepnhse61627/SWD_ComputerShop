package com.parser;

import com.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by hiepnhse61627 on 11/03/2017.
 */
public class CartParser implements ICartParser {

    @Autowired
    ICartService cartService;
}
