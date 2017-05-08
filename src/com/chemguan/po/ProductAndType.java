package com.chemguan.po;

/**
 * 产品和产品类型的包装类
 * @author 郭胜
 *
 */
public class ProductAndType {

	private Product product;
	private Producttype producttype;
	private String image;
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Producttype getProducttype() {
		return producttype;
	}
	public void setProducttype(Producttype producttype) {
		this.producttype = producttype;
	}
}
