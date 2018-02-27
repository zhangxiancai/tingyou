package com.ting.you.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.List;

public class FileUtil {

    public static void writeToLocal(MultipartFile file,String fileLocation) throws IOException {

        BufferedOutputStream out = new BufferedOutputStream(
                new FileOutputStream(new File(fileLocation)));
        out.write(file.getBytes());
        out.flush();
        out.close();
    }


    public static void deleteFile(String fileLocation) {
            File file = new File(fileLocation);
            if (file.exists() && file.isFile()){
                file.delete();
            }
    }
}
