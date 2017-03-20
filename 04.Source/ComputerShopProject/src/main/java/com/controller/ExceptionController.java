package com.controller;

import com.dto.ErrorDTO;
import com.util.ResponseUtil;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.persistence.EntityNotFoundException;
import java.util.Map;

/**
 * Created by MinhQuy on 3/15/2017.
 */
@ControllerAdvice
public class ExceptionController {
//    @ExceptionHandler(EntityNotFoundException.class)
//    public Map<String, ErrorDTO> catchEntityNotFoundException(EntityNotFoundException enfe) {
//        ErrorDTO errorDTO = new ErrorDTO(404, enfe.getMessage());
//        return ResponseUtil.responseError(errorDTO);
//    }
//
//    @ExceptionHandler(IllegalArgumentException.class)
//    public Map<String, ErrorDTO> catchIllegalArgumentException(IllegalArgumentException iae) {
//        ErrorDTO errorDTO = new ErrorDTO(400, iae.getMessage());
//        return ResponseUtil.responseError(errorDTO);
//    }
}
