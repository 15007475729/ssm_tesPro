package com.lad.entity;

public class Users {
    private Integer id;

    private String uname;

    private String pwd;

    private Integer rid;

    public Users(Integer id, String uname, String pwd, Integer rid) {
        this.id = id;
        this.uname = uname;
        this.pwd = pwd;
        this.rid = rid;
    }

    public Users() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }
}