package cn.hbeu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ajax")
public class AjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AjaxServlet() {
        super();
    }
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// ������������ʽ
    	// ������Ӧ�����ʽ
    	resp.setCharacterEncoding("utf-8");
    	resp.setContentType("text/html;charset=utf-8");
    	// ��ȡ������Ϣ
    	// ����������Ϣ
    	// ��Ӧ������
    	resp.getWriter().write("��ã��ҵ�״̬����200��");
    }

}
