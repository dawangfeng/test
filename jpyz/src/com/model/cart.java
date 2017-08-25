package com.model;

public class cart {
    private Integer id;

    private Integer crtegorychildid;

    private String goodsrenderingimg;

    private String goodstemplateimg;

    private String description;

    private String goodsno;

    private String goodsapply;

    private String specifications;

    private Integer number;

    private String createtime;

    private Integer userid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCrtegorychildid() {
        return crtegorychildid;
    }

    public void setCrtegorychildid(Integer crtegorychildid) {
        this.crtegorychildid = crtegorychildid;
    }

    public String getGoodsrenderingimg() {
        return goodsrenderingimg;
    }

    public void setGoodsrenderingimg(String goodsrenderingimg) {
        this.goodsrenderingimg = goodsrenderingimg == null ? null : goodsrenderingimg.trim();
    }

    public String getGoodstemplateimg() {
        return goodstemplateimg;
    }

    public void setGoodstemplateimg(String goodstemplateimg) {
        this.goodstemplateimg = goodstemplateimg == null ? null : goodstemplateimg.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getGoodsno() {
        return goodsno;
    }

    public void setGoodsno(String goodsno) {
        this.goodsno = goodsno == null ? null : goodsno.trim();
    }

    public String getGoodsapply() {
        return goodsapply;
    }

    public void setGoodsapply(String goodsapply) {
        this.goodsapply = goodsapply == null ? null : goodsapply.trim();
    }

    public String getSpecifications() {
        return specifications;
    }

    public void setSpecifications(String specifications) {
        this.specifications = specifications == null ? null : specifications.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime == null ? null : createtime.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}