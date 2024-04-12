<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>명함 정보 입력</title>
</head>
<body>
    <form action="input.jsp" method="post">
        <table>
        	<tr>
                <td>id:</td>
                <td><input type="text" name="txtId"></td>
            </tr>
            <tr>
                <td>이름:</td>
                <td><input type="text" name="txtName"></td>
            </tr>
            <tr>
                <td>폰번호:</td>
                <td><input type="text" name="txtTelNo"></td>
            </tr>
            <tr>
                <td>이메일:</td>
                <td><input type="text" name="txtMail"></td>
            </tr>
        </table>
        <input type="submit" value="저장">
    </form>
    <%
    	String url = "jdbc:oracle:thin:@localhost:1521:xe";
    	String loginid = "system";
    	String password = "123456";
    	
    	String id = request.getParameter("txtId");
        String name = request.getParameter("txtName");
        String telNo = request.getParameter("txtTelNo");
        String mail = request.getParameter("txtMail");
        
        if (id != null && name != null && telNo != null && mail != null) {
            Connection conn = null;
            PreparedStatement pstmt = null;
            try {
                // 드라이버 변경: com.mysql.jdbc.Driver -> com.mysql.cj.jdbc.Driver
                Class.forName("oracle.jdbc.driver.OracleDriver");
                conn = DriverManager.getConnection(url, loginid, password);
                String sql = "INSERT INTO namecard (id, name, telno, mail) VALUES (?, ?, ?, ?)";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, id);
                pstmt.setString(2, name);
                pstmt.setString(3, telNo);
                pstmt.setString(4, mail);
                
                pstmt.executeUpdate();
                out.println("<p>명함 정보가 성공적으로 저장되었습니다.</p>");
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<p>명함 정보 저장에 실패하였습니다.</p>");
            } finally {
                if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
                if (conn != null) try { conn.close(); } catch(SQLException ex) {}
            }
        }
    %>
</body>
</html>


