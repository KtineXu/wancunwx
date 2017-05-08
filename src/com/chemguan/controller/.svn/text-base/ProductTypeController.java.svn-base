package com.chemguan.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chemguan.po.PageBean;
import com.chemguan.po.Producttype;
import com.chemguan.service.ProductTypeService;
import com.chemguan.tool.Tools;

/**
 * 产品类别控制层
 * @author 郭胜
 *
 */
@Controller
public class ProductTypeController {

	@Resource
	private ProductTypeService productTypeServiceImpl;
	
	@Resource
	private Tools tools;
	
	/**
	 * 后台功能：产品类别列表
	 */
	@RequestMapping("afterFindProductType.do")
	public String afterFindProductType(HttpServletRequest request){
		List<Producttype> recordList = new ArrayList<Producttype>();
		List<Producttype> list = new ArrayList<Producttype>();
		list = productTypeServiceImpl.findAllProductType();
		Map<String,Integer> map = new HashMap<String,Integer>();
		/**
		 * int recordCount
		 * int currentPage
		 * int pageSize
		 * List recordList
		 */
		int currentPage = 1;
		if(null != request.getParameter("currentPage")){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		int recordCount = list.size();
		int pageSize = 4;
		map.put("start", (currentPage-1)*4);
		recordList = productTypeServiceImpl.findProductTypeByPageBean(map);
		PageBean pb = new PageBean(currentPage, recordCount, pageSize, recordList);
		request.setAttribute("pageBean", pb);
		return "chemguanpanel/productsType.jsp";
	}
	
	/**
	 * 后台功能：产品类型添加
	 */
	@RequestMapping("afterInserProductType.do")
	public String afterInsertProductType(HttpServletRequest request,HttpServletResponse response){
		//productName,description,imgURL
		Producttype p = new Producttype();
		p.setDescription(request.getParameter("description"));
		String url = "";
		try {
			url = tools.saveImage(request, response, "imgURL");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		p.setImage(url);
		p.setTypename(request.getParameter("productName"));
		productTypeServiceImpl.insertProductType(p);
		return "afterFindProductType.do";
	}
	
	/**
	 * 后台功能：删除产品类型
	 */
	@RequestMapping("afterDeleteProductType.do")
	public String afterDeleteProductType(HttpServletRequest request){
		int id = Integer.parseInt(request.getParameter("id"));
		productTypeServiceImpl.deleteProductTypeById(id);
		return "afterFindProductType.do";
	}
	
	/**
	 * 后台功能：跳转到修改页面
	 */
	@RequestMapping("afterUpdateProductTypeUI.do")
	public String afterUpdateProductTypeUI(HttpServletRequest request){
		//要为修改页面准备产品类型信息
		int id = Integer.parseInt(request.getParameter("id"));
		Producttype p = new Producttype();
		p = productTypeServiceImpl.findProductTypeById(id);
		request.setAttribute("producttype", p);
		return "chemguanpanel/addProductsType.jsp";
	}
	
	/**
	 * 后台功能：修改产品类型信息
	 */
	@RequestMapping("afterUpdateProductType.do")
	public String afterUpdateProductType(HttpServletRequest request,HttpServletResponse response){
		int id = Integer.parseInt(request.getParameter("id"));
		Producttype p = new Producttype();
		p = productTypeServiceImpl.findProductTypeById(id);
		p.setDescription(request.getParameter("description"));
		String url = "";
		try {
			url = tools.saveImage(request, response, "imgURL");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(url != null && !url.equals("")){
			p.setImage(url);
		}
		p.setTypename(request.getParameter("productName"));
		productTypeServiceImpl.updateProductType(p);
		
		return "afterFindProductType.do";
	}
	
}
