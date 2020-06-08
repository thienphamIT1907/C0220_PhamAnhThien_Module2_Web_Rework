
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
    <form action="/calculate" method="post">
        <input type="number" name="num1" value="0">
        <input type="number" name="num2" value="0">
        <br>
        <input type="submit" name="operator" value="Addition (+)">
        <input type="submit" name="operator" value="Subtraction (-)">
        <input type="submit" name="operator" value="Multiplication (*)">
        <input type="submit" name="operator" value="Division (/)" onclick="clickDivision()">
    </form>

    <hr/>

    <h2>Result</h2>
    <label>
        <input id="result" type="text" disabled value="${result}">
    </label>

    <script>
        let rs = document.getElementById("result").value;
        function clickDivision() {
            if(rs === 0) {
                alert('Cannot divison by 0');
            }
        }
    </script>
</body>
</html>
