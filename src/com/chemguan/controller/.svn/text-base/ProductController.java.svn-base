package com.chemguan.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chemguan.po.PageBean;
import com.chemguan.po.Product;
import com.chemguan.po.ProductAndType;
import com.chemguan.po.Producttype;
import com.chemguan.service.NewsService;
import com.chemguan.service.ProductService;
import com.chemguan.service.ProductTypeService;
import com.chemguan.tool.Tools;

/**
 * product的控制类
 * @author 郭胜
 *
 */
@Controller
public class ProductController {
	
	@Resource
	private ProductTypeService productTypeServiceImpl;
	@Resource
	 private ProductService productServiceImpl;
	@Resource 
	private Tools tools;
	
	/**
	 * 后台功能：跳转到添加产品页面
	 */
	@RequestMapping("afterInsertProductUI.do")
	public String afterInsertProductUI(HttpServletRequest request){
		//要给添加产品页面提供产品类型数据
		List<Producttype> producttypeList = productTypeServiceImpl.findAllProductType();
		request.setAttribute("producttypeList", producttypeList);
		return "chemguanpanel/addProduct.jsp";
	}
	
	/**
	 *后台功能：添加产品
	 */
	@RequestMapping("afterInsertProduct.do")
	public String afterInsertProduct(HttpServletRequest request,HttpServletResponse response){
		//adddate,description,detail,imageurl5,price,productname,typeid
		//产品详情对应页面是content因为要照顾编辑器
		Product p = new Product();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String de = sdf.format(new Date());
		try{
			Date dd = sdf.parse(de);
			p.setAdddate(dd);
		}catch(Exception e){
			System.out.println("日期类型出错了");
		}
		p.setDescription(request.getParameter("description"));
		p.setDetail(request.getParameter("content"));
		List<String> blist=new ArrayList<String>();
		String Url = "";
		try {
			blist.add(tools.saveImage(request, response, "imgURL"));
			blist.add(tools.saveImage(request, response, "imgURL1"));
			blist.add(tools.saveImage(request, response, "imgURL2"));
			blist.add(tools.saveImage(request, response, "imgURL3"));
			blist.add(tools.saveImage(request, response, "imgURL4"));
			for(int i=0;i<5;i++){
				if(blist.get(i)==null){
					Url+=",";
				}else{
					Url+=blist.get(i)+",";
				}
			}
			Url=Url.substring(0,Url.length()-1);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		p.setImageurl(Url);
		p.setPrice(Double.parseDouble(request.getParameter("price")));
		p.setProductname(request.getParameter("productname"));
		p.setTypeid(Integer.parseInt(request.getParameter("typeid")));
		productServiceImpl.insertProduct(p);
		return"afterFindProduct.do";
	}
	
	/**
	 *查询产品类型集合 
	 */
	public List<Producttype> findProducttypeList(){
		List<Producttype> list = new ArrayList<Producttype>();
		list = productTypeServiceImpl.findAllProductType();
		return list;
	}
	
	
	/**
	 * 后台功能：跳到产品修改页面
	 */
	@RequestMapping("afterUpdateProductUI.do")
	public String afterUpdateProductUI(HttpServletRequest request){
		//要为修改页面准备要修改产品的对象，用于数据回显
		int id = Integer.parseInt(request.getParameter("id"));
		Product p = productServiceImpl.findProductById(id);
		request.setAttribute("product", p);
		//要为修改页面准备产品类型数据
		List<Producttype> typeList = new ArrayList<Producttype>();
		typeList = this.findProducttypeList();
		request.setAttribute("producttypeList", typeList);
		return "chemguanpanel/addProduct.jsp";
	}
	
	/**
	 * 后台功能：产品修改
	 */
	@RequestMapping("afterUpdateProduct.do")
	public String afterUpdateProduct(HttpServletRequest request,HttpServletResponse response){
		int id = Integer.parseInt(request.getParameter("id"));
		Product p = new Product();
		p = productServiceImpl.findProductById(id);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String de = sdf.format(new Date());
		try {
			Date dd = sdf.parse(de);
			p.setAdddate(dd);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		p.setPrice(Double.parseDouble(request.getParameter("price")));
		p.setProductname(request.getParameter("productname"));
		p.setTypeid(Integer.parseInt(request.getParameter("typeid")));
		p.setDescription(request.getParameter("description"));
		p.setDetail(request.getParameter("content"));
		List<String> blist=new ArrayList<String>();
		String Url = "";
		try {
				blist.add(tools.saveImage(request, response, "imgURL"));
				blist.add(tools.saveImage(request, response, "imgURL1"));
				blist.add(tools.saveImage(request, response, "imgURL2"));
				blist.add(tools.saveImage(request, response, "imgURL3"));
				blist.add(tools.saveImage(request, response, "imgURL4"));
				for(int i=0;i<blist.size();i++){
					if(blist.get(i)==null){
						Url+=",";
					}else{
						Url+=blist.get(i)+",";
					}
				}
				Url=Url.substring(0,Url.length()-1);
				if(!Url.equals(",,,,")){
					p.setImageurl(Url);
				}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		productServiceImpl.updateProduct(p);
		return "afterFindProduct.do";
	}
	
	/**
	 * 实现第二个功能：点击产品中心，跳转到产品中心的页面。为产品中心的页面准备数据
	 */
	@RequestMapping("productCenterUI.do")
	public String productCenterUI(HttpServletRequest request){
		//为product_list.jsp页面准备产品类型列表
		List<Producttype> productTypeList = new ArrayList<Producttype>();
		productTypeList = productTypeServiceImpl.findAllProductType();
		request.setAttribute("productTypeList", productTypeList);
		//为product_list.jsp页面准备产品
		List<Product> productList = new ArrayList<Product>();
		productList = productServiceImpl.findAllProduct();
		request.setAttribute("productList", productList);
		return "";
	}
	
	/**
	 * 后台功能：查看产品
	 */
	@RequestMapping("afterFindProduct.do")
	public String afterFindProduct(HttpServletRequest request){
		List<Product> productList = new ArrayList<Product>();
		productList = productServiceImpl.findAllProduct();
		/**
		 * int recordCount
		 * int currentPage
		 * int pageSize
		 * List recordList
		 */
		int recordCount = productList.size();
		int currentPage = 1;
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		int pageSize = 4;
		Map<String,Integer> map = new HashMap<String,Integer>();
		map.put("start",(currentPage-1)*4);
		List<Product> pList = productServiceImpl.findByPageBean(map);
		List<ProductAndType> recordList = new ArrayList<ProductAndType>();
		for(Product p : pList){
			String image = "";
			if(p.getImageurl() != null){
				image = (String)tools.split(p.getImageurl()).get(0);
			}
			int id = p.getTypeid();
			Producttype pt = productTypeServiceImpl.findProductTypeById(id);
			ProductAndType pat = new ProductAndType();
			pat.setProduct(p);
			pat.setProducttype(pt);
			pat.setImage(image);
			recordList.add(pat);
		}
		PageBean pb = new PageBean(currentPage, recordCount, pageSize, recordList);
		request.setAttribute("pageBean", pb);
		return "chemguanpanel/products.jsp";
	}
	
	/**
	 * 后台功能：删除
	 */
	@RequestMapping("afterDeleteProduct.do")
	public String afterDeleteProduct(HttpServletRequest request){
		int id = Integer.parseInt(request.getParameter("id"));
		Product p = new Product();
		p.setId(id);
		productServiceImpl.deleteProduct(p);
		return "afterFindProduct.do";
	}
	
	
	

}
