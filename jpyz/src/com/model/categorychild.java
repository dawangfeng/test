package com.model;

public class categorychild {
    private Integer categorychildid;

    private Integer categoryid;

    private String categorychildname;

    public Integer getCategorychildid() {
        return categorychildid;
    }

    public void setCategorychildid(Integer categorychildid) {
        this.categorychildid = categorychildid;
    }

    public Integer getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(Integer categoryid) {
        this.categoryid = categoryid;
    }

    public String getCategorychildname() {
        return categorychildname;
    }

    public void setCategorychildname(String categorychildname) {
        this.categorychildname = categorychildname == null ? null : categorychildname.trim();
    }
}