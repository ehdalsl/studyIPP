<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>명함 목록</title>
</head>
<body>
<h2>명함 목록 조회</h2>
<table border="1">
    <thead>
        <tr>
        	<th>ID</th>
            <th>이름</th>
            <th>폰번호</th>
            <th>이메일</th>
        </tr>
    </thead>
    <tbody>
        <%
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            try {
                // 데이터베이스 드라이버 로드
                Class.forName("com.mysql.cj.jdbc.Driver");

                // 데이터베이스 연결
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yourDatabaseName?useSSL=false&characterEncoding=UTF-8&serverTimezone=UTC", "yourUsername", "yourPassword");

                // SQL 쿼리 실행
                stmt = conn.createStatement();
                String sql = "SELECT * FROM namecard";
                rs = stmt.executeQuery(sql);

                // 결과 처리
                while(rs.next()) {
                    String name = rs.getString("name"); // 수정됨
                    String phone = rs.getString("phone"); // 수정됨
                    String email = rs.getString("email"); // 수정됨        
        %>
                    <tr>
                        <td><%= name %></td>
                        <td><%= phone %></td>
                        <td><%= email %></td>
                    </tr>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                // 자원 정리
                if (rs != null) try { rs.close(); } catch(SQLException ex) {}
                if (stmt != null) try { stmt.close(); } catch(SQLException ex) {}
                if (conn != null) try { conn.close(); } catch(SQLException ex) {}
            }
        %>
    </tbody>
</table>
</body>
</html>
