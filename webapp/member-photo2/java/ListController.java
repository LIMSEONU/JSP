package cs.dit.member;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/list.do")
public class ListController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        // DAO를 통해 회원 리스트 조회
        MemberDAO dao = new MemberDAO();
        ArrayList<MemberDTO> list = dao.list();

        // 조회된 회원 목록을 request에 담기
        request.setAttribute("members", list);

        // list.jsp로 포워딩
        request.getRequestDispatcher("list.jsp").forward(request, response);
    }
}
