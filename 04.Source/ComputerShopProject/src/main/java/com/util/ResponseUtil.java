package com.util;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by MinhQuy on 3/15/2017.
 */
public class ResponseUtil {
    private static final String RESULT = "result";
    public static Map<String, Object> responseObject(Object object){
        Map<String, Object> map = new HashMap<>();
        map.put(RESULT, object);
        return map;
    }
}
