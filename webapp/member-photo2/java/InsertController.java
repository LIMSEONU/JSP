package cs.dit.member;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/insert.do")
@MultipartConfig(
		location = "C:/tmp",
		maxFileSize = -1,
		maxRequestSize = -1
	)
public class InsertController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        // 폼 데이터 받기
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");

        // 업로드된 파일 정보 받기
        Part part = request.getPart("photo");
        String fileName = extractFileName(part);

        // 파일 저장
        if (fileName != null && !fileName.isEmpty()) {
            part.write(fileName);  // 위의 location 경로에 저장됨
        }

        // DTO에 저장
        MemberDTO dto = new MemberDTO();
        dto.setId(id);
        dto.setName(name);
        dto.setPwd(pwd);
        dto.setPhoto(fileName);

        // DAO로 DB insert
        MemberDAO dao = new MemberDAO();
        dao.insert(dto);

        // 목록으로 리다이렉트
        response.sendRedirect("list.do");
    }

    // 업로드된 파일명 추출하는 메서드
    private String extractFileName(Part part) {
        String contentDisposition = part.getHeader("content-disposition");
        for (String item : contentDisposition.split(";")) {
            if (item.trim().startsWith("filename")) {
                return item.substring(item.indexOf("=") + 2, item.length() - 1);
            }
        }
        return null;
    }
}
