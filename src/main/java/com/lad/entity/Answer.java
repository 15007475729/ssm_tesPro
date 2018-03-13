package com.lad.entity;

public class Answer {
    private Integer id;

    private Integer asn;

    private String tanswer;

    public Answer(Integer id, Integer asn, String tanswer) {
        this.id = id;
        this.asn = asn;
        this.tanswer = tanswer;
    }

    public Answer() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAsn() {
        return asn;
    }

    public void setAsn(Integer asn) {
        this.asn = asn;
    }

    public String getTanswer() {
        return tanswer;
    }

    public void setTanswer(String tanswer) {
        this.tanswer = tanswer;
    }
}