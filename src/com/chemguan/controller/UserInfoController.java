package com.chemguan.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chemguan.entity.Orderserviceproduct;
import com.chemguan.entity.ScoreRecords;
import com.chemguan.entity.Users;
import com.chemguan.service.OrderProductsService;
import com.chemguan.service.ScoreRecordsService;
import com.chemguan.service.UsersService;
import com.chemguan.tool.EmojiFilter;
import com.chemguan.tool.GetWxOrderno;
import com.chemguan.tool.QRCode;
import com.chemguan.tool.RequestHandler;
import com.chemguan.tool.SNSUserInfo;
import com.chemguan.tool.Sha1Util;
import com.chemguan.tool.TenpayUtil;
import com.chemguan.tool.WeixinOauth2;
import com.chemguan.tool.WeixinUtil;
import com.chemguan.tool.Wxsign;

@Controller
@Scope("prototype")
public class UserInfoController {
	
	@Resource
	private UsersService userservice;
	
	@Resource
	private ScoreRecordsService scorerecords;
	
	@Resource
	private OrderProductsService orderproduct;
	
	/**
	 * 用户在初始使用公众号时获得他的微信信息
	 */
	@RequestMapping("getUserInfo.do")
	public String getUserInfo(HttpServletRequest request,HttpServletResponse response) throws Exception{
		String jsp = "";
		 WeixinUtil w = new WeixinUtil();
		 request.setCharacterEncoding("utf-8");
	     response.setCharacterEncoding("utf-8");
         
	     // 用户同意授权后，能获取到code
	     String code = request.getParameter("code");
	     EmojiFilter ef=new EmojiFilter();
	    /* Integer state = null;
	     if(null !=request.getParameter("state") ){
	    	 state = Integer.parseInt(request.getParameter("state"));	
	     }*/
	     String state = request.getParameter("state");
	         	     
	     HttpSession httpSession = request.getSession();
	     String openID = (String) httpSession.getAttribute("openID");
	    	     	     
	     // 用户同意授权
	     if (!"authdeny".equals(code)) {
	         // 获取网页授权access_token
	         WeixinOauth2 weixinOauth2 = w.getOauth2AccessToken("wx777f0b5b69efafc7", "dfe6cb97267098d77713122261ef0f32", code);
	         // 网页授权接口访问凭证
	         	         
	         String accessToken = weixinOauth2.getAccessToken();
	         // 用户标识
	         String openId = weixinOauth2.getOpenId();
	         	        	         
	         // 获取用户信息	 
	         SNSUserInfo snsUserInfo= w.getUserInfo(accessToken, openId);
	         
	        //插入数据库
	         Users us = userservice.findUsersByoppId(openId);
	         if(us==null){
      			Users use=new Users();
      			use.setAddress(snsUserInfo.getCountry()+","+snsUserInfo.getCity());
      			use.setProvince(snsUserInfo.getProvince());
      			use.setCity(snsUserInfo.getCity());
      			use.setNickName(snsUserInfo.getNickname());
      			use.setHeadImgURL(snsUserInfo.getHeadImgUrl());
      			use.setOppid(snsUserInfo.getOpenId());
      			SimpleDateFormat sim=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
      			use.setAddDate(sim.format(new Date()));
      			userservice.addUsers(use);
	         }
	         HttpSession session  = request.getSession();
	         session.setAttribute("openID",openId );
	     }
	     return "GoPersonalCenter.do";
	}
	
//	@RequestMapping("pCenter.do")
//	public String pCenter(HttpServletRequest request,HttpServletResponse response) throws Exception{	
//		HttpSession session = request.getSession();
//		String openID = (String) session.getAttribute("openID");
//		Users use = userservice.findUsersByoppId(openID);
//		Users user=userservice.findUsersById(use.getId());
//		request.setAttribute("user", user);	
//		return "pcenter.jsp";
//	}
	
	//个人中心
	@RequestMapping("GoPersonalCenter.do")
	public String GoPersonalCenter(HttpServletRequest request,HttpServletResponse response) throws Exception{	
		HttpSession session = request.getSession();
		String openID = (String) session.getAttribute("openID");
		Users use = userservice.findUsersByoppId(openID);
		if(use==null){
			response.sendRedirect("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx777f0b5b69efafc7&redirect_uri=http%3A%2F%2Fwancunn.com%2FgetUserInfo.do&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect");
		}else{
			Users user=userservice.findUsersById(use.getId());
			request.setAttribute("user", user);	
		}
		//return "personalCenter.jsp";
		return "pcenter.jsp";
	}
	
	
	
	//签到
	@RequestMapping("signin.do")
	public String signin(HttpServletRequest request,HttpServletResponse response,int id) throws Exception{	
		
		//查询签到时间
		List<ScoreRecords> src = scorerecords.findScoreRecordsBytitle("签到积分",id);		
		SimpleDateFormat sim=new SimpleDateFormat("yyyy-MM-dd");
		Date addDate=null;
		String simfor="";
		if(src!=null){
			try {
				addDate = src.get(0).getAddDate();
				simfor=sim.format(addDate);
			} catch (Exception e) {
				simfor="";
			}
		}		
		//判断是否签过
		if((!simfor.equals(sim.format(new Date())))||src==null){		
		ScoreRecords sr=new ScoreRecords();	
		SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String format = sd.format(new Date());
		try {
			sr.setAddDate(sd.parse(format));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		sr.setTitle("签到积分");

		sr.setUserID(id);
		sr.setScore(5);
		sr.setImgURL("images/jf_gn1.jpg");
		scorerecords.addScoreRecords(sr);
		
		Users user=userservice.findUsersById(id);
		user.setScore(user.getScore()+5);
		userservice.updateUsersById(user);
		}
		return "GoPersonalCenter.do";
	}
	
	
	
	/**
	 * 我的推广
	 */
	@RequestMapping("myspred.do")
		public String myspred(HttpServletRequest request,HttpServletResponse response){				
		return "extension.jsp";
	}
	
	
	/**
	 * 我的推广生成二维码
	 */
	@RequestMapping("createQRCode.do")
		public void createQRCode(HttpServletRequest request,HttpServletResponse response) throws Exception{	
			//生成二维码,根据openID获得认得id
			HttpSession session = request.getSession();
			String openID = (String) session.getAttribute("openID");	
			QRCode c  = new QRCode();
			c.test(response,openID);
	}
	
	
	/**
	 * 產品生成二维码
	 *//*
	@RequestMapping("cpQRCode.do")
	public void cpQRCode(HttpServletRequest request,HttpServletResponse response) throws Exception{	
		QRCode c  = new QRCode();
		c.test1(response,"","");
	}*/
	
	
	/**
	 *这里是通过二维码分享
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("getUser.do")
	public String getUser(HttpServletRequest request,HttpServletResponse response) throws Exception{				
		 WeixinUtil w = new WeixinUtil();
		 request.setCharacterEncoding("utf-8");
	     response.setCharacterEncoding("utf-8");
	     EmojiFilter ef=new EmojiFilter();

	     // 用户同意授权后，能获取到code
	     String code = request.getParameter("code");
	     String openID = request.getParameter("state");//这里得到是被分享人的openID
	     Users customer1 = userservice.findUsersByoppId(openID);
	     
	     // 用户同意授权
	     if (!"authdeny".equals(code)) {
	         // 获取网页授权access_token
	         WeixinOauth2 weixinOauth2 = w.getOauth2AccessToken("wx777f0b5b69efafc7", "dfe6cb97267098d77713122261ef0f32", code);
	         // 网页授权接口访问凭证
	         String accessToken = weixinOauth2.getAccessToken();
	         // 用户标识
	         String openId = weixinOauth2.getOpenId();
	         	        	         
	         // 获取用户信息	 
	         SNSUserInfo snsUserInfo= w.getUserInfo(accessToken, openId);
	         		Users us = userservice.findUsersByoppId(snsUserInfo.getOpenId());
	         		if(us==null){
	         			Users use=new Users();
	         			use.setAddress(snsUserInfo.getCountry()+","+snsUserInfo.getCity());
	         			use.setProvince(snsUserInfo.getProvince());
	         			use.setCity(snsUserInfo.getCity());
	         			use.setNickName(snsUserInfo.getNickname());
	         			use.setHeadImgURL(snsUserInfo.getHeadImgUrl());
	         			use.setOppid(snsUserInfo.getOpenId());
	         			use.setShareUserID(customer1.getId());
	         			SimpleDateFormat sim=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	         			use.setAddDate(sim.format(new Date()));
	         			userservice.addUsers(use);
	         		}	
	         		HttpSession session  = request.getSession();
	   	            session.setAttribute("openID",openId );
	         		session.setAttribute("sex",snsUserInfo.getSex() );
	         }        
	     //return "index.do";
	     return "index.jsp";
	
	}	
	
	
	
	
	
	
	/**
	 * 我的产品页面
	 * @param request
	 * @return
	 */
	@RequestMapping("Gomyproduct.do")
	public String Gomyproduct(HttpServletRequest request){		
		  /**
		  * 获取token接口
		  */
		String getTokenUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx38b32f527759debd&secret=199582e3e6b2561f04d92ee3908dd8c0";
		JSONObject jsonObject = WeixinUtil.httpRequest(getTokenUrl, "GET", null);
		String Token=jsonObject.getString("access_token");		
		
		String ticketurl = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token="+Token+"&type=jsapi"; 
		JSONObject jsonObject1 = WeixinUtil.httpRequest(ticketurl, "GET", null);
		String ticket=jsonObject1.getString("ticket"); 
		
		
		String uuid = UUID.randomUUID().toString();//sui ji zi fu chuan
		String timestamp=Long.toString(System.currentTimeMillis() / 1000);//shi jian chui
		
		
		String url="http://xiguashu.jiriweb.com/Gomyproduct.do";
		
		//查询出所有延保过的产品
		
		String oppid = (String) request.getSession().getAttribute("openID");
		Users us = userservice.findUsersByoppId(oppid);
		List<Orderserviceproduct> list = orderproduct.findybOrderProductsbycusid(us.getId());		
		 Map<String, String> ret = Wxsign.sign(ticket, url);
		request.setAttribute("list", list);
		request.setAttribute("url", url);
		request.setAttribute("nonceStr", ret.get("nonceStr"));
		request.setAttribute("timestamp", ret.get("timestamp"));
		request.setAttribute("signature", ret.get("signature"));
		return "myProduct-product.jsp";
	}
	
	
	
	
	
	
	
	
	/**
	 * 我的产品备用序列号延保
	 */
//	@RequestMapping("Gomyproductyanbao.do")
//	public String Gomyproductyanbao(HttpServletRequest request,HttpServletResponse response,String SerialNumber){	
//		Products op = product.findProductsByseri(SerialNumber);
//		if(op!=null&&op.getServiceFlag()==0){
//			Calendar rightNow = Calendar.getInstance();
//	        rightNow.setTime(op.getServiceDate());
//	        rightNow.add(Calendar.MONTH,3);//日期加3个月
//	        op.setServiceDate(rightNow.getTime());
//	        op.setServiceFlag(1);//标记为已延保
//	        product.updateProductsById(op);
//	        JSONObject json = new JSONObject(); 
//	        json.put("result",1);
//	        PrintWriter out;
//			try {
//				out = response.getWriter();
//				out.print(json.toString());
//				out.close();
//				out.flush();
//			} catch (IOException e1) {
//				// TODO Auto-generated catch block
//				e1.printStackTrace();
//			}
//		}else{
//			JSONObject json = new JSONObject(); 
//	        json.put("result",0);
//	        PrintWriter out;
//			try {
//				out = response.getWriter();
//				out.print(json.toString());
//				out.close();
//				out.flush();
//			} catch (IOException e1) {
//				// TODO Auto-generated catch block
//				e1.printStackTrace();
//			}
//			System.out.println("延保单号不存在或已延保！");
//		}
//		return "Gomyproduct.do";
//	}
	
	
	
	/**
	 * 前往个人信息设置
	 */
	@RequestMapping("personinfoset.do")
	public String personinfoset(HttpServletRequest request,HttpServletResponse response) throws Exception{	
		HttpSession session = request.getSession();
		String openID = (String) session.getAttribute("openID");
		Users use = userservice.findUsersByoppId(openID);
		if(use==null){
			response.sendRedirect("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx777f0b5b69efafc7&redirect_uri=http%3A%2F%2Fwancunn.com%2FgetUser.do&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect");
		}else{
			Users user=userservice.findUsersById(use.getId());
			request.setAttribute("user", user);	
		}	
		return "personalInfoSet.jsp";
	}
	
	
	/**
	 * 微信支付
	 */
	@RequestMapping("zhifu.do")
	public String zhifu(HttpServletRequest request,HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		String openID = (String) session.getAttribute("openID");
		Users use = userservice.findUsersByoppId(openID);
		
		//网页授权后获取传递的参数
		String userId = use.getId()+""; 	
		String orderNo = request.getParameter("orderNo"); 
		String money = request.getParameter("money");
		
		
				
		//金额转化为分为单位
		float sessionmoney = Float.parseFloat(money);
		String finalmoney = String.format("%.2f", sessionmoney);
		finalmoney = finalmoney.replace(".", "");
		
		//商户相关资料 
		String appid = "wx38b32f527759debd";
		String appsecret = "199582e3e6b2561f04d92ee3908dd8c0";
		//商户号
		String partner = "1246105001";
		//商户秘钥key
		String partnerkey = "";
		//用户oppenid
		String openId =openID ;

		//获取openId后调用统一支付接口https://api.mch.weixin.qq.com/pay/unifiedorder
				String currTime = TenpayUtil.getCurrTime();
				//8位日期
				String strTime = currTime.substring(8, currTime.length());
				//四位随机数
				String strRandom = TenpayUtil.buildRandom(4) + "";
				//10位序列号,可以自行调整。
				String strReq = strTime + strRandom;				
				//商户号
				String mch_id = partner;
				//子商户号  非必输
				//String sub_mch_id="";
				//设备号   非必输
				String device_info="";
				//随机数 
				String nonce_str = strReq;
				//商品描述
				//String body = describe;
				
				//商品描述根据情况修改
				String body = "美食";
				//附加数据
				String attach = userId;
				//商户订单号
				String out_trade_no = orderNo;
				
				int intMoney = Integer.parseInt(finalmoney);
				
				//总金额以分为单位，不带小数点
				int total_fee = intMoney;
				//订单生成的机器 IP
				String spbill_create_ip = request.getRemoteAddr();
				//订 单 生 成 时 间   非必输
//				String time_start ="";
				//订单失效时间      非必输
//				String time_expire = "";
				//商品标记   非必输
//				String goods_tag = "";
				
				//这里notify_url是 支付完成后微信发给该链接信息，可以判断会员是否支付成功，改变订单状态等。
				String notify_url ="http://suse.jiriweb.com/zhifuhuidiao.do";
				
				String trade_type = "JSAPI";
				String openid = openId;
				//非必输
//				String product_id = "";
				SortedMap<String, String> packageParams = new TreeMap<String, String>();
				packageParams.put("appid", appid);  
				packageParams.put("mch_id", mch_id);  
				packageParams.put("nonce_str", nonce_str);  
				packageParams.put("body", body);  
				packageParams.put("attach", attach);  
				packageParams.put("out_trade_no", out_trade_no);  
				
				
				//这里写的金额为1 分到时修改
				packageParams.put("total_fee", "1");  
//				packageParams.put("total_fee", "finalmoney");  
				packageParams.put("spbill_create_ip", spbill_create_ip);  
				packageParams.put("notify_url", notify_url);  
				
				packageParams.put("trade_type", trade_type);  
				packageParams.put("openid", openid);  

				RequestHandler reqHandler = new RequestHandler(request, response);
				reqHandler.init(appid, appsecret, partnerkey);
				
				String sign = reqHandler.createSign(packageParams);
				String xml="<xml>"+
						"<appid>"+appid+"</appid>"+
						"<mch_id>"+mch_id+"</mch_id>"+
						"<nonce_str>"+nonce_str+"</nonce_str>"+
						"<sign>"+sign+"</sign>"+
						"<body><![CDATA["+body+"]]></body>"+
						"<attach>"+attach+"</attach>"+
						"<out_trade_no>"+out_trade_no+"</out_trade_no>"+
						//金额，这里写的1 分到时修改
						"<total_fee>"+1+"</total_fee>"+
						//"<total_fee>"+finalmoney+"</total_fee>"+
						"<spbill_create_ip>"+spbill_create_ip+"</spbill_create_ip>"+
						"<notify_url>"+notify_url+"</notify_url>"+
						"<trade_type>"+trade_type+"</trade_type>"+
						"<openid>"+openid+"</openid>"+
						"</xml>";
				System.out.println(xml);
				String allParameters = "";
				try {
					allParameters =  reqHandler.genPackage(packageParams);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				String createOrderURL = "https://api.mch.weixin.qq.com/pay/unifiedorder";
				String prepay_id="";
				try {
					prepay_id = new GetWxOrderno().getPayNo(createOrderURL, xml);
					if(prepay_id.equals("")){
						request.setAttribute("ErrorMsg", "统一支付接口获取预支付订单出错");
						System.out.println("统一支付接口获取预支付订单出错");
					}
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				SortedMap<String, String> finalpackage = new TreeMap<String, String>();
				String appid2 = appid;
				String timestamp = Sha1Util.getTimeStamp();
				String nonceStr2 = nonce_str;
				String prepay_id2 = "prepay_id="+prepay_id;
				String packages = prepay_id2;
				finalpackage.put("appId", appid2);  
				finalpackage.put("timeStamp", timestamp);  
				finalpackage.put("nonceStr", nonceStr2);  
				finalpackage.put("package", packages);  
				finalpackage.put("signType", "MD5");
				String finalsign = reqHandler.createSign(finalpackage);
				System.out.println("pay.jsp?appid="+appid2+"&timeStamp="+timestamp+"&nonceStr="+nonceStr2+"&package="+packages+"&sign="+finalsign);
				/*response.sendRedirect("pay.jsp?appid="+appid2+"&timeStamp="+timestamp+"&nonceStr="+nonceStr2+"&package="+packages+"&sign="+finalsign);	*/
				return "pay.jsp?appid="+appid2+"&timeStamp="+timestamp+"&nonceStr="+nonceStr2+"&package="+packages+"&sign="+finalsign;
	}
	
	
	
	
	
	/**
	 * 微信支付回调
	 */
	@RequestMapping("zhifuhuidiao.do")
	public String zhifuhuidiao(HttpServletRequest request,HttpServletResponse response) throws Exception{	
		BufferedReader br = new BufferedReader(new InputStreamReader((ServletInputStream)request.getInputStream()));
        String line = null;
        StringBuilder sb = new StringBuilder();
        while((line = br.readLine())!=null){
            sb.append(line);
        }
        System.out.println(sb);
		return "";
	}
	
	
	
}
