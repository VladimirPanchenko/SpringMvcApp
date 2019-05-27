<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ввод параметров</title>
</head>
<body>
    <form method="POST" name="mainForm">
        <b>Текст сообщения:</b></br>
        <input type="text" name="message"/></br>
        <b>Число:</b></br>
        <input type="text" name="number"/></br>
        <button type="button" onclick=addUrlParam();>Ввод</button>
    </form>
    <script>
        function addUrlParam() {
            var form = document.getElementsByName("mainForm")[0];
            var numericParameter = document.getElementsByName("number")[0];
            form.action = "/" + numericParameter.value;
            form.submit();
            return false;
        }
    </script>
</body>
</html>