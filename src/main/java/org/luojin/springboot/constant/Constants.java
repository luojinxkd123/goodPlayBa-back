package org.luojin.springboot.constant;

import java.text.SimpleDateFormat;

public interface Constants {
    int DEFAULT_PGSZ = 10;
    int DEFAULT_PGCT = 1;
    String LONG_DATE_FORMAT_STR = "yyyy-MM-dd HH:mm:ss";
    String SHORT_DATE_FORMAT_STR = "yyyy-MM-dd";
    SimpleDateFormat LONG_DATE_FORMATTER = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    SimpleDateFormat SHORT_DATE_FORMATTER = new SimpleDateFormat("yyyy-MM-dd");
}