package cs.dit.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/updateForm.do")
public class UpdateFormController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        // 1. ID 파라미터 받기
        String id = request.getParameter("id");

        // 2. DAO 통해 해당 ID의 정보 조회
        MemberDAO dao = new MemberDAO();
        MemberDTO dto = dao.get(id);  // get(id) 메서드가 DAO에 있어야 함!

        // 3. request 객체에 저장
        request.setAttribute("dto", dto);

        // 4. updateForm.jsp로 포워딩
        request.getRequestDispatcher("updateForm.jsp").forward(request, response);
    }
}
