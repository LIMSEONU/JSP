package cs.dit.member;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/update.do")
@MultipartConfig(
		location = "C:/tmp",
		maxFileSize = -1,
		maxRequestSize = -1
	)
public class UpdateProController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        // 1. 파라미터 받기
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");
        Part part = request.getPart("photo");

        // 2. 업로드된 파일 이름 추출
        String newPhoto = extractFileName(part);

        // 3. 기존 사진 유지 처리
        MemberDAO dao = new MemberDAO();
        MemberDTO existingDto = dao.get(id); // 기존 데이터 가져오기

        String photo = newPhoto != null && !newPhoto.isEmpty()
            ? newPhoto
            : existingDto.getPhoto(); // 새 사진 없으면 기존 사진 유지

        if (newPhoto != null && !newPhoto.isEmpty()) {
            part.write(photo); // 새 파일 저장
        }

        // 4. DTO에 담고 DB 업데이트
        MemberDTO dto = new MemberDTO(id, name, pwd, photo);
        dao.update(dto); // update 메서드 필요!

        // 5. 목록으로 이동
        response.sendRedirect("list.do");
    }

    // 파일명 추출 메서드
    private String extractFileName(Part part) {
        String content = part.getHeader("content-disposition");
        for (String token : content.split(";")) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf("=") + 2, token.length() - 1);
            }
        }
        return null;
    }
}
