package com.chemguan.tool;

import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;



/**
 * ʱ���String��ת��������
 * @author Administrator
 *
 */
@Service
public class Tools {
	
	/**
	 * 时间转字符串
	 * 格式yyyy-mm-dd HH:ss
	 * @param date
	 * @return
	 */
	public String dataToString(Date date){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ");
		String time = simpleDateFormat.format(date);
		return time;
		
	}
	
	/**
	 * 时间转字符串2
	 * 格式yyyy-mm-dd 
	 * @param date
	 * @return
	 */
	public String dataToString2(Date date){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String time = simpleDateFormat.format(date);
		return time;
		
	}
	
	/**
	 * String תint
	 */
	
	public int StringToInt(String str){
		int t = Integer.parseInt(str);
		return t;
		
	}
	

	/**
	 * 分割字符串
	 */	
	public List split(String str){
		List idList = new ArrayList();
		if(str.contains(",")){
			String [] ids = str.split(",");			
			for(String id :ids){				
				idList.add(id);
			}
		}else{
			idList.add(str);
		}		
		return idList ;	
	}
	
	
	public String saveImage(HttpServletRequest request,HttpServletResponse response,String str) throws Exception{
		String imageUrl = null;
		MultipartHttpServletRequest mreq = (MultipartHttpServletRequest)request;
        MultipartFile file = mreq.getFile(str);
        
        if (!file.getOriginalFilename().equals("")) {
	        String fileName = file.getOriginalFilename();
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");     
	        FileOutputStream fos = new FileOutputStream(request.getSession().getServletContext().getRealPath("/")+ "upload\\"+sdf.format(new Date())+str+fileName.substring(fileName.lastIndexOf('.')));
	        fos.write(file.getBytes());
	        imageUrl  = "upload/"+sdf.format(new Date())+str+fileName.substring(fileName.lastIndexOf('.'));
        }     
        
		return imageUrl ;        
       
     }
	
	public static void main(String []str){
		   
        String aaa = "aaa";
        String []str1 = aaa.split(",");
        System.out.println(str1[0]+"2222");
        
        Date d = new Date();
		SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		int ram = (int)(1+Math.random()*(100-1+1));//1~100的随机数
		String orderNumber = sp.format(d)+ram;
		System.out.println(orderNumber);
	}
}
