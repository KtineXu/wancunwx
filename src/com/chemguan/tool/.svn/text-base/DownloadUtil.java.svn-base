package com.chemguan.tool;

import java.io.BufferedInputStream;  
import java.io.BufferedOutputStream;  
import java.io.File;  
import java.io.FileInputStream;  
  
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
import org.springframework.stereotype.Component; 

public class DownloadUtil {
	//下载模版工具类  
    public static void downloadFile(HttpServletRequest request,    
        HttpServletResponse response,String fileName) throws Exception {    
        response.setContentType("text/html;charset=UTF-8");     
        BufferedInputStream in = null;    
        BufferedOutputStream out = null;    
        request.setCharacterEncoding("UTF-8");    
        String rootpath = request.getSession().getServletContext().getRealPath("/");    
        try {    
            File f = new File(rootpath + "WEB-INF/classes/" + fileName);    
            response.setContentType("application/x-excel");    
            response.setCharacterEncoding("UTF-8");    
            response.setHeader("Content-Disposition", "attachment; filename="+new String(fileName.getBytes("gbk"),"iso-8859-1"));    
            response.setHeader("Content-Length",String.valueOf(f.length()));    
            in = new BufferedInputStream(new FileInputStream(f)); 
            out = new BufferedOutputStream(response.getOutputStream());    
            byte[] data = new byte[1024];    
            int len = 0;    
            while (-1 != (len=in.read(data, 0, data.length))) {    
                out.write(data, 0, len);                
            }    
        } catch (Exception e) {    
            e.printStackTrace();    
        } finally {    
            if (in != null) { 
                in.close();    
            }    
            if (out != null) {  
            	out.flush();
                out.close(); 
            }    
        }    
        
    }  
}
