package org.wpope.upload.service;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.wpope.upload.domain.request.UploadRequest;

import java.io.File;
import java.io.FileOutputStream;

@Component("uploadService")
public class UploadService {

    private static Logger log = LoggerFactory.getLogger(UploadService.class);

    public void writeFile(UploadRequest request) {
        try {
            File file = new File("F:/Temp/" + request.getAction() + "_" + request.getProduct() + ".xml");
            FileOutputStream outputStream = new FileOutputStream(file);
            IOUtils.write(request.getXml(), outputStream);
        } catch (Exception ex) {
            log.error("Exception:", ex);
        }
    }

}
