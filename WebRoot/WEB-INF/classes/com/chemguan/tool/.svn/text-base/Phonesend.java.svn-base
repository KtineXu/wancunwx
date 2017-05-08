package com.chemguan.tool;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class Phonesend {
	/**
	 * 封装好的手机发送类，只需要更改内容和发送的签名
	 * 信息示例：【签名】第一信息 JAVA示例测试-zj
	 * @param content
	 * @param sign
	 * @throws IOException 
	 */
	public void messageObject(String content,String phonenumber) throws IOException{
		//发送内容
		//String content = "第一信息 JAVA示例测试"; 
		String sign="西瓜树";
		StringBuffer sb = new StringBuffer("http://sms.1xinxi.cn/asmx/smsservice.aspx?");
		sb.append("name=sanyang");
		sb.append("&pwd=8A7EC468A902E1EE31559CDED2D9");
		sb.append("&mobile="+phonenumber);
		sb.append("&content="+URLEncoder.encode(content,"UTF-8"));
		sb.append("&stime=");
		sb.append("&sign="+URLEncoder.encode(sign,"UTF-8"));
		sb.append("&type=pt&extno=");
		System.out.println("sb:"+sb.toString());
		URL url = new URL(sb.toString());
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.setRequestMethod("POST");
		InputStream is =url.openStream();
		String returnStr = Phonesend.convertStreamToString(is);
		// 返回结果为‘0，20140009090990,1，提交成功’ 发送成功   具体见说明文档
		System.out.println(returnStr);
	}
	
	
	/**
	 * 转换返回值类型为UTF-8格式.
	 * @param is
	 * @return
	 */
	public static String convertStreamToString(InputStream is) {    
        StringBuilder sb1 = new StringBuilder();    
        byte[] bytes = new byte[4096];  
        int size = 0;  
        
        try {    
        	while ((size = is.read(bytes)) > 0) {  
                String str = new String(bytes, 0, size, "UTF-8");  
                sb1.append(str);  
            }  
        } catch (IOException e) {    
            e.printStackTrace();    
        } finally {    
            try {    
                is.close();    
            } catch (IOException e) {    
               e.printStackTrace();    
            }    
        }    
        return sb1.toString();    
    }
	
	public static void main(String[] args) throws IOException {
		Phonesend ps=new Phonesend();
		ps.messageObject("来试试吧2", "15720822872");
	}
	

}
