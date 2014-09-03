package org.wpope.upload.domain.request;

public class UploadRequest {

    String action;
    String product;
    String xml;

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public String getXml() {
        return xml;
    }

    public void setXml(String xml) {
        this.xml = xml;
    }

    @Override
    public String toString() {
        return "UploadRequest{" +
                "action='" + action + '\'' +
                ", product='" + product + '\'' +
                ", xml='" + xml + '\'' +
                '}';
    }
}
