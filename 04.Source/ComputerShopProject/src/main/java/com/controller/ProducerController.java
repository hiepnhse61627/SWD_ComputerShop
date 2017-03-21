package com.controller;

import com.dto.ProducerDTO;
import com.service.producer.IProducerService;
import com.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * Created by MinhQuy on 3/19/2017.
 */
@RestController
public class ProducerController {
    @Autowired
    IProducerService producerService;

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/producer", method = RequestMethod.GET)
    public Map<String, Object> getAllProducer() {
        return ResponseUtil.responseObject(producerService.getListProducer());
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/producer", method = RequestMethod.POST)
    public Map<String, Object> createNewProducer(ProducerDTO producerDTO) {
        return ResponseUtil.responseObject(producerService.createProducer(producerDTO));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/producer-update", method = RequestMethod.POST)
    public Map<String, Object> updateProducer(ProducerDTO producerDTO) {
        return ResponseUtil.responseObject(producerService.updateProducer(producerDTO));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/producer", method = RequestMethod.DELETE)
    public Map<String, Object> removeProducer(@RequestParam("producerCode") String producerCode) {
        return ResponseUtil.responseObject(producerService.removeProducer(producerCode));
    }

    @CrossOrigin(allowedHeaders = "*", allowCredentials = "true")
    @RequestMapping(value = "/producer/getByCode", method = RequestMethod.GET)
    public Map<String, Object> getProducerByCode(@RequestParam("producerCode") String producerCode) {
        return ResponseUtil.responseObject(producerService.findProducerByProducerCode(producerCode));
    }
}
