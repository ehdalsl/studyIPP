<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>명함 입력</title>
</head>
<body>
   <div align="center"></div>
   <table border="1" width="550" height="300">
      <tr align="center">
         <td>이름</td>
         <td><input type="text" name="txtName" size="10"></td>
      </tr>
      <tr align="center">
         <td>폰번호</td>
         <td><input type="text" name="txtPhone" size="15"></td>
      </tr>
      <tr align="center">
         <td>이메일</td>
         <td><input type="text" name="txtMail" size="30"></td>
      </tr>
      <tr align="center">
         <td>주소</td>
         <td><input type="text" name="txtAddress" size="50"></td>
      </tr>
      <tr align="center">
         <td>관계</td>
         <td><input type="text" name="txtRel" size="50"></td>
      </tr>
      <tr align="center">
         <td colspan="2">
            <button type="submit">저장</button>
            <button type="reset">취소</button>
         </td>
      </tr>
   </table>

</body>
</html>