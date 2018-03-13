package com.lad.entity;

public class Fuzzy {
    private int count;
    private int page;
    private String term;
    private String val;

    public Fuzzy() {
    }

    public Fuzzy(int count, int page, String term, String val) {
        this.count = count;
        this.page = page;
        this.term = term;
        this.val = val;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public String getVal() {
        return val;
    }

    public void setVal(String val) {
        this.val = val;
    }

    @Override
    public String toString() {
        return "Fuzzy{" +
                "count='" + count + '\'' +
                ", page='" + page + '\'' +
                ", term='" + term + '\'' +
                ", val='" + val + '\'' +
                '}';
    }
}
