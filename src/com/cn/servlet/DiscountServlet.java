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
 * @date 2019/12/21 20:45
 */
public class DiscountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private PrepService prepService = new PrepServiceImpl();


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("pages/admin/right/discount.jsp").forward(request, response);
    }
}
