package com.model;

public class xinxi {
    private Integer goodsid;

    private String crtegorychildid;

    private String goodsrenderingimg;

    private String goodstemplateimg;

    private String description;

    private String goodsno;

    private String goodsapply;

    private String specifications;

    private String createtime;
    
    private categorychild categorychild;

    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public String getCrtegorychildid() {
        return crtegorychildid;
    }

    public void setCrtegorychildid(String crtegorychildid) {
        this.crtegorychildid = crtegorychildid == null ? null : crtegorychildid.trim();
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

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime == null ? null : createtime.trim();
    }

	public categorychild getCategorychild() {
		return categorychild;
	}

	public void setCategorychild(categorychild categorychild) {
		this.categorychild = categorychild;
	}
}