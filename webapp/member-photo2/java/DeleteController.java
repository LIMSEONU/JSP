package cs.dit.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/delete.do")
public class DeleteController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        // 1. 삭제할 ID 가져오기
        String id = request.getParameter("id");

        // 2. DAO를 통해 삭제
        MemberDAO dao = new MemberDAO();
        dao.delete(id);

        // 3. 목록으로 리다이렉트
        response.sendRedirect("list.do");
    }
}
