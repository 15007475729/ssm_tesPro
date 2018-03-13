package com.lad.entity;

public class Studentanwer {
    private Integer sid;

    private Integer tid;

    private String sacontent;

    private String usn;

    public Studentanwer(Integer sid, Integer tid, String sacontent, String usn) {
        this.sid = sid;
        this.tid = tid;
        this.sacontent = sacontent;
        this.usn = usn;
    }

    public Studentanwer() {
        super();
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getSacontent() {
        return sacontent;
    }

    public void setSacontent(String sacontent) {
        this.sacontent = sacontent;
    }

    public String getUsn() {
        return usn;
    }

    public void setUsn(String usn) {
        this.usn = usn;
    }
}