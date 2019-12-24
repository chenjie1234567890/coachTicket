package com.cn.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cn.domain.Prep;
import com.cn.service.PrepService;
import com.cn.service.impl.PrepServiceImpl;

/**
 * 
 * @ClassName: PayServlet
 * @Description: 用户付款
 */
public class PayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		String temp = request.getParameter("temp");

//		// 判断是否是从支付宝支付接口回跳来的
//		if (temp != null && "1".equals(temp)) {
//			Integer prepId = Integer.valueOf(request.getParameter("prepId"));
//			PrepService prepService = new PrepServiceImpl();
//			Prep prep = prepService.getById(prepId);
//
//			prep.setWay(true);
//			int recordNumber = prepService.update(prep);
//
//			PrintWriter out = response.getWriter();
//			if (recordNumber == 1) {
//				out.write(
//						"<script>alert('付款成功！');" + "window.location.href='pages/user/myCenter/myCenter.jsp'</script>");
//			} else {
//				out.write("<script>alert('很抱歉,付款失败！');" + "window.location.href='MyPrepServlet'</script>");
//			}
//
//			out.close();
//
//		}
//
//		Integer prepId = Integer.valueOf(request.getParameter("prepId"));
//		PrepService prepService = new PrepServiceImpl();
//		Prep prep = prepService.getById(prepId);
//
//		// 支付接口调用 start
//
//		request.setAttribute("prep", prep);
//		request.getRequestDispatcher("AlipayServlet").forward(request, response);
//
//		// 支付接口调用 end

		
		/* 沙箱服务器在每周日12点至周一12点维护，如调用接口失效 ，1.将本段解除注释，2.将 上面代码全部注释
		*/
		Integer prepId = Integer.valueOf(request.getParameter("prepId")); PrepService
				prepService = new PrepServiceImpl();
		Prep prep = prepService.getById(prepId);
		prep.setWay(true); int recordNumber = prepService.update(prep);

		PrintWriter out = response.getWriter();
		if(recordNumber == 1) {
			out.write("<script>alert('付款成功！已发送车票到手机，请注意查收！');" +
					"window.location.href='MyPrepServlet'</script>");
		} else {
			out.write("<script>alert('很抱歉,付款失败！');" +
					"window.location.href='MyPrepServlet'</script>"); }
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
