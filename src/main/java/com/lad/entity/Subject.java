package com.lad.entity;

public class Subject {
    private Integer id;

    private String ssx;

    private String sname;

    private String sdesc;

    public Subject(Integer id, String ssx, String sname, String sdesc) {
        this.id = id;
        this.ssx = ssx;
        this.sname = sname;
        this.sdesc = sdesc;
    }

    public Subject() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSsx() {
        return ssx;
    }

    public void setSsx(String ssx) {
        this.ssx = ssx;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSdesc() {
        return sdesc;
    }

    public void setSdesc(String sdesc) {
        this.sdesc = sdesc;
    }
}