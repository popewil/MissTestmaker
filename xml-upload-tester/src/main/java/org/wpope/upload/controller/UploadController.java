package org.wpope.upload.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.wpope.upload.domain.request.UploadRequest;
import org.wpope.upload.service.UploadService;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/")
public class UploadController {

    private static Logger log = LoggerFactory.getLogger(UploadController.class);

    @Autowired
    private UploadService service;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String loadOptions(ModelMap model) {
        log.info("Retrieving model for upload service.");

        Map<String, String> actions = new HashMap<String, String>();
        actions.put("Add/Update", "add");
        actions.put("Delete", "delete");
        model.addAttribute("actions", actions);

        Map<String, String> products = new HashMap<String, String>();
        products.put("ABC", "abc");
        products.put("MNO", "mno");
        products.put("PQR", "pqr");
        products.put("XYZ", "xyz");
        model.addAttribute("products", products);

        return "upload";
    }

    @RequestMapping(value = "/submit", method = RequestMethod.POST)
    public String submitForm(UploadRequest request, ModelMap model) {

        log.info("Writing XML to file.");
        log.info("Request: " + request);

        service.writeFile(request);

        model.addAttribute("message", "Upload of the message was successful.");
        return "result";
    }
}