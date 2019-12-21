package com.cn.servlet;

import com.cn.domain.Prep;
import com.cn.service.PrepService;
import com.cn.service.impl.PrepServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author chenjie
 * @date 2019/12/21 20:20
 */
public class CountPrepServlet2 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private PrepService prepService = new PrepServiceImpl();


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 所有订单
        List<Prep> list = prepService.getAll();
        // 已付款的订单
        List<Prep> preps = new ArrayList<Prep>();

        for(Prep prep : list) {
            if(prep.isWay()) {
                preps.add(prep);
            }
        }

        // 统计
        Integer prepNumber = preps.size();	// 有效订单数
        Integer prepPrice = 0;	// 总销售额
        for(Prep prep : preps) {
            prepPrice += prep.getPrice();
        }

        request.setAttribute("prepNumber", prepNumber);
        request.setAttribute("prepPrice", prepPrice);
        request.getRequestDispatcher("pages/admin/right/countPrep2.jsp").forward(request, response);
    }
}
