package com.lad.entity;

public class Classes {
    private Integer id;

    private String csn;

    private String cname;

    private String cdesc;

    public Classes(Integer id, String csn, String cname, String cdesc) {
        this.id = id;
        this.csn = csn;
        this.cname = cname;
        this.cdesc = cdesc;
    }

    public Classes() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCsn() {
        return csn;
    }

    public void setCsn(String csn) {
        this.csn = csn;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCdesc() {
        return cdesc;
    }

    public void setCdesc(String cdesc) {
        this.cdesc = cdesc;
    }
}