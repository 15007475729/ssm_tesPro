package com.lad.entity;

public class Test {
    private Integer id;

    private String usn;

    private Integer ttype;

    private String tcon;

    private Integer tgrade;

    private Integer tsub;

    public Test(Integer id, String usn, Integer ttype, String tcon, Integer tgrade, Integer tsub) {
        this.id = id;
        this.usn = usn;
        this.ttype = ttype;
        this.tcon = tcon;
        this.tgrade = tgrade;
        this.tsub = tsub;
    }

    public Test() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsn() {
        return usn;
    }

    public void setUsn(String usn) {
        this.usn = usn;
    }

    public Integer getTtype() {
        return ttype;
    }

    public void setTtype(Integer ttype) {
        this.ttype = ttype;
    }

    public String getTcon() {
        return tcon;
    }

    public void setTcon(String tcon) {
        this.tcon = tcon;
    }

    public Integer getTgrade() {
        return tgrade;
    }

    public void setTgrade(Integer tgrade) {
        this.tgrade = tgrade;
    }

    public Integer getTsub() {
        return tsub;
    }

    public void setTsub(Integer tsub) {
        this.tsub = tsub;
    }
}