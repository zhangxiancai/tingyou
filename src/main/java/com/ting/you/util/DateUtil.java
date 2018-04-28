package com.ting.you.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

    public static String changeDate(Date date, String pattern){
        SimpleDateFormat sdf = new SimpleDateFormat(pattern);
        return sdf.format(date);//设置特定格式时间字符串

    }
}
