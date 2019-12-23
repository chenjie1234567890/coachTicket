package com.cn.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cn.domain.Member;
import com.cn.domain.Pmember;
import com.cn.domain.Prep;
import com.cn.domain.Train;
import com.cn.service.PmemberService;
import com.cn.service.PrepService;
import com.cn.service.TrainService;
import com.cn.service.impl.PmemberServiceImpl;
import com.cn.service.impl.PrepServiceImpl;
import com.cn.service.impl.TrainServiceImpl;

/**
 * 
 * @ClassName: BookingServlet 
 * @Description: 乘客  实现订票功能的Servlet
 */
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			/**
			 *  先执行
			 */
			HttpSession session = request.getSession();
			Member member = (Member) session.getAttribute("member");

			Integer trainId = (Integer) request.getAttribute("trainId");
			TrainService trainService = new TrainServiceImpl();
			Train train = trainService.getById(trainId);
			// 根据会员ID获取会员个人信息
			Integer memberId = member.getMemberId(); // 从Session中获取
			PmemberService pmemberService = new PmemberServiceImpl();
			Pmember pmember = pmemberService.getPmemberByMemberId(memberId);
			
			// 将数据转发到界面
			request.setAttribute("train", train);
			request.setAttribute("pmember", pmember);
			request.getRequestDispatcher("pages/user/booking.jsp").forward(request, response);

	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/**
		 * 确认后执行，
		 * 将订票信息传入prep表
		 * 将train表的本车次座位数量-1
		 */
		Integer trainId = Integer.valueOf(request.getParameter("trainId"));
		TrainService trainService = new TrainServiceImpl();
		Train train = trainService.getById(trainId);
		// 根据会员ID获取会员个人信息
		Member member = (Member) request.getSession().getAttribute("member");	// 从Session中获取
		Integer memberId = member.getMemberId();;	
		PmemberService pmemberService = new PmemberServiceImpl();
		Pmember pmember = pmemberService.getPmemberByMemberId(memberId);
		
		Prep prep = new Prep();
		prep.setTrainId(train.getTrainId());
		prep.setPmemberId(pmember.getPmemberId());
		prep.setStartStation(train.getStartStation());
		prep.setEndStation(train.getEndStation());
		prep.setTrainNumber(train.getTrainNumber());
		prep.setStartTime(train.getStartTime());
		prep.setEndTime(train.getEndTime());
		prep.setPrice(train.getPrice());
		prep.setWay(false);

//		Long time = new java.util.Date().getTime();
//		Date sqlDate = new java.sql.Date(time);
//		prep.setBooktime(sqlDate);
		
		
		PrepService prepService = new PrepServiceImpl();
		int recordNumber = prepService.add(prep);
		
		PrintWriter out = response.getWriter();
		if(recordNumber == 1) {
			// 先将座位数量-1
			train.setSeatNumber(train.getSeatNumber()-1);
			trainService.update(train);
			
			HttpSession session = request.getSession();
			String  flag = (String) session.getAttribute("changePrep");
			if(flag!=null && !"".equals(flag) && "true".equals(flag)) {
				// 是改签业务
				
				// 修改session，表示改签结束
				session.setAttribute("changePrep", "false");
				out.write("<script>alert('改签成功！');"
					    + "window.location.href='MyPrepServlet'</script>");
			} 
			out.write("<script>alert('订票成功！');"
				    + "window.location.href='GetByStartEndStationServlet'</script>");
			
		}else {
			out.write("<script>alert('很抱歉,订票失败！');"
				    + "window.location.href='GetByStartEndStationServlet'</script>");
		}
		
		out.close();
	}

}
