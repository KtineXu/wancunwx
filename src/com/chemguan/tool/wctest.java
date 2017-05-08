package com.chemguan.tool;

import java.awt.image.BufferedImage;
import java.io.File;
import java.util.Hashtable;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;

public class wctest {
	
	private static final int BLACK = 0xFF000000;
    private static final int WHITE = 0xFFFFFFFF;
    
    
	public static void main(String[] args) throws Exception{
		   String text =  "什么";
           String path = "D:/二维码";
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
		 String text = "东西";
		/*String text= "http://192.168.1.112:8080/SuSe/";*/
		String path = "D:/二维码";																						
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
         /* Graphics2D gs = image.createGraphics();  
          
          gs.setBackground(Color.WHITE);  
          gs.clearRect(0, 0, 140, 140);  
            
          //设定图像颜色：BLACK  
          gs.setColor(Color.yellow);  
            
          //设置偏移量  不设置肯能导致解析出错  
          int pixoff = 5;  
          //输出内容：二维码  
          
            
          gs.dispose();  
          image.flush();*/  
            
            
            
          //生成二维码QRCode图片  
        /*  ImageIO.write(image, "jpg", response.getOutputStream()); */
          // 生成二维码
          ImageIO.write (image, "gif",response.getOutputStream());
		
		
	}   
    
	

}
