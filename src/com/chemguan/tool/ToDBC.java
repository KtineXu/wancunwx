package com.chemguan.tool;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;

import com.swetake.util.Qrcode;

public class ToDBC {
	String context;  
    BufferedImage img;  
    int width = 150;   
    int height =150;  
    public ToDBC(String context){  
        try{  
            System.out.println(context);  
            Qrcode testQrcode =new Qrcode();   
            testQrcode.setQrcodeErrorCorrect('M');   
            testQrcode.setQrcodeEncodeMode('B');   
            testQrcode.setQrcodeVersion(7);   
            byte[] d = context.getBytes("UTF-8");   
            BufferedImage bi = new BufferedImage(width, height, BufferedImage.TYPE_BYTE_BINARY);   
            Graphics2D g = bi.createGraphics();   
            g.setBackground(Color.WHITE);   
            g.clearRect(0, 0, width, height);   
            g.setColor(Color.BLACK);   
            // 限制最大字节数为119  
            if (d.length>0 && d.length <120){   
                boolean[][] s = testQrcode.calQrcode(d);   
                for (int i=0;i<s.length;i++){   
                    for (int j=0;j<s.length;j++){   
                        if (s[j][i]) {   
                            g.fillRect(j*2,i*2,2,2);   
                        }  
                    }  
                }  
            }  
            g.dispose();   
            bi.flush();   
            this.context = context;  
            this.img = bi;  
        }   
        catch (Exception e) {   
            e.printStackTrace();   
        }     
    }  
    public String getContext() {  
        return context;  
    }  
    public BufferedImage getImg() {  
        return img;  
    }  
    public int getWidth() {  
        return width;  
    }  
    public int getHeight() {  
        return height;  
    }  
}
