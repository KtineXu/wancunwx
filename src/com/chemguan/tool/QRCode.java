package com.chemguan.tool;


import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Hashtable;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;

/**二维码生成工具类
 * @param args
 */
public class QRCode {

	private static final int BLACK = 0xFF000000;
    private static final int WHITE = 0xFFFFFFFF;
    
    
	public static void main(String[] args) throws Exception{
		   String text =  "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx777f0b5b69efafc7&redirect_uri=wancunn.com/getCode.do&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect";
           String path = "D:/";
           int width = 900;
           int height = 900;
           // 二维码图片格式
           String format = "gif";
           // 设置编码，防止中文乱码
           Hashtable<EncodeHintType, Object> ht = new Hashtable<EncodeHintType, Object> ();
           ht.put (EncodeHintType.CHARACTER_SET, "UTF-8");
           // 设置二维码参数(编码内容，编码类型，图片宽度，图片高度, 编码格式)
           BitMatrix bitMatrix = new MultiFormatWriter ().encode (text, BarcodeFormat.QR_CODE, width, height, ht);
           // 生成二维码(定义二维码输出服务器路径)
           File outputFile = new File (path);
           if (!outputFile.exists ())
           {
               //创建文件夹
               outputFile.mkdir ();
           }
           int b_width = bitMatrix.getWidth ();
           int b_height = bitMatrix.getHeight ();
           // 建立图像缓冲器
           BufferedImage image = new BufferedImage (b_width, b_height, BufferedImage.TYPE_3BYTE_BGR);
           for ( int x = 0; x < b_width; x++ )
           {
               for ( int y = 0; y < b_height; y++ )
               {
                   image.setRGB (x, y, bitMatrix.get (x, y) ? BLACK : WHITE);
               }
           }
           // 生成二维码
           ImageIO.write (image, format, new File (path + "/qrcode." + format));

	}
	
	public void test(HttpServletResponse response,String id) throws Exception{
		  String text = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx777f0b5b69efafc7&redirect_uri=http%3A%2F%2Fwancunn.com%2FgetUser.do&response_type=code&scope=snsapi_userinfo&state="+id+"#wechat_redirect";
		  String path = "D:/";																						
          int width = 297;
          int height = 297;
          // 二维码图片格式
          String format = "gif";
          // 设置编码，防止中文乱码
          Hashtable<EncodeHintType, Object> ht = new Hashtable<EncodeHintType, Object> ();
          ht.put (EncodeHintType.CHARACTER_SET, "UTF-8");
          // 设置二维码参数(编码内容，编码类型，图片宽度，图片高度, 编码格式)
          BitMatrix bitMatrix = new MultiFormatWriter ().encode (text, BarcodeFormat.QR_CODE, width, height, ht);
          // 生成二维码(定义二维码输出服务器路径)
          File outputFile = new File (path);
          if (!outputFile.exists ())
          {
              //创建文件夹
              outputFile.mkdir ();
          }
          int b_width = bitMatrix.getWidth ();
          int b_height = bitMatrix.getHeight ();
          // 建立图像缓冲器
          BufferedImage image = new BufferedImage (b_width, b_height, BufferedImage.TYPE_3BYTE_BGR);
          for ( int x = 0; x < b_width; x++ )
          {
              for ( int y = 0; y < b_height; y++ )
              {
                  image.setRGB (x, y, bitMatrix.get (x, y) ? BLACK : WHITE);
              }
          }
          // 生成二维码
          ImageIO.write (image, "gif",response.getOutputStream());		
	}
	
	
	
	public void test1(String text,String name) throws Exception{
		/*text = "https://xiguashu.jiriweb.com/"++"#wechat_redirect";*/
		/*String path = "C:/";*/
		String path =this.getClass().getClassLoader().getResource("/").getPath();
        int width = 297;
        int height = 297;
        // 二维码图片格式
        String format = "gif";
        // 设置编码，防止中文乱码
        Hashtable<EncodeHintType, Object> ht = new Hashtable<EncodeHintType, Object> ();
        ht.put (EncodeHintType.CHARACTER_SET, "UTF-8");
        // 设置二维码参数(编码内容，编码类型，图片宽度，图片高度, 编码格式)
        BitMatrix bitMatrix = new MultiFormatWriter ().encode (text, BarcodeFormat.QR_CODE, width, height, ht);
        // 生成二维码(定义二维码输出服务器路径)
        File outputFile = new File (path+name+".gif");
        if (!outputFile.exists ())
        {
            //创建文件夹
            outputFile.mkdir ();
        }
        int b_width = bitMatrix.getWidth ();
        int b_height = bitMatrix.getHeight ();
        // 建立图像缓冲器
        BufferedImage image = new BufferedImage (b_width, b_height, BufferedImage.TYPE_3BYTE_BGR);
        for ( int x = 0; x < b_width; x++ )
        {
            for ( int y = 0; y < b_height; y++ )
            {
                image.setRGB (x, y, bitMatrix.get (x, y) ? BLACK : WHITE);
            }
        }
        // 生成二维码
        /*ImageIO.write (image, "gif",response.getOutputStream());*/
        ImageIO.write(image, "gif", outputFile);
        /*String fileName = name+".gif";  //下载的文件名  
        DownloadUtil.downloadFile(request, response, fileName);*/  
        }   
        


}
