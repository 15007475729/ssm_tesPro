package com.lad.entity;

public class Teacher {
    private Integer id;

    private String tname;

    private String tsex;

    private Integer tid;

    public Teacher(Integer id, String tname, String tsex, Integer tid) {
        this.id = id;
        this.tname = tname;
        this.tsex = tsex;
        this.tid = tid;
    }

    public Teacher() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTsex() {
        return tsex;
    }

    public void setTsex(String tsex) {
        this.tsex = tsex;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }
}