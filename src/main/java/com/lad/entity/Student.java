package com.lad.entity;

public class Student {
    private Integer id;

    private String sname;

    private Integer cid;

    private String ssex;

    private String gid;

    private String stel;

    private Integer state;

    public Student(Integer id, String sname, Integer cid, String ssex, String gid, String stel, Integer state) {
        this.id = id;
        this.sname = sname;
        this.cid = cid;
        this.ssex = ssex;
        this.gid = gid;
        this.stel = stel;
        this.state = state;
    }

    public Student() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getSsex() {
        return ssex;
    }

    public void setSsex(String ssex) {
        this.ssex = ssex;
    }

    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    public String getStel() {
        return stel;
    }

    public void setStel(String stel) {
        this.stel = stel;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}