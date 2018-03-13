package com.lad.entity;

public class Stustate {
    private Integer id;

    private Integer state;

    public Stustate(Integer id, Integer state) {
        this.id = id;
        this.state = state;
    }

    public Stustate() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}