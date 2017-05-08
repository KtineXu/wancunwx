package com.chemguan.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chemguan.po.PageImage;
import com.chemguan.service.PageImageService;
import com.chemguan.tool.Tools;

/**
 * 没个页面的轮播图片
 * @author Administrator
 *
 */
@Controller
public class PageImageController {

	@Resource
	private PageImageService pageImageServiceImpl;
	
	@Resource
	private Tools tools;
	
	/**
	 * 后台功能：查看首页轮播图片
	 */
	@RequestMapping("findFirstPageImage.do")
	public String findFirstPageImage(HttpServletRequest request){
		List<String> pageImageList = new ArrayList<String>();
		PageImage pi = new PageImage();
		pi = pageImageServiceImpl.findFirstPageImage();
		if(pi.getImage() != null && !pi.getImage().equals("")){
			pageImageList = tools.split(pi.getImage());
		}
		request.setAttribute("pageImageList", pageImageList);
		return "chemguanpanel/pageImage.jsp";
	}
	
	/**
	 * 后台功能：修改首页轮播图片
	 */
	@RequestMapping("updateFirstPageImage.do")
	public String updateFirstPageImage(HttpServletRequest request,HttpServletResponse response){
		PageImage pi = new PageImage();
		pi = pageImageServiceImpl.findFirstPageImage();
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
					pi.setImage(Url);
				}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		pageImageServiceImpl.updateFirstPageImage(pi);
		return "findFirstPageImage.do";
	}
	
}
