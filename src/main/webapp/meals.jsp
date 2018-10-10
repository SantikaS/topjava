<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Meals</title>
    <style type="text/css">
        .tHead {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: black;
            background-color: white;
        }

        .tHead td {
            font-family: "Times New Roman", sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: black;

            background-color: white;
        }

        .tHead th {
            font-family: "Times New Roman", sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: black;

            background-color: #E4F6F9;
        }

        .tAddFilter {
            font-family: "Times New Roman", sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #9AD4FF;
            color: #333;
            background-color: white;
        }

    </style>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<h2>Meals</h2>


<tr>
    <td colspan="2" >
        <table class="tHead" width="100%" >
            <tr>
                <th width="30%">Дата/Время</th>
                <th width="30%">Описание</th>
                <th width="20%">Каллории</th>
                <%--<th width="10%">Редактор</th>--%>
                <%--<th width="10%">Удалить</th>--%>
            </tr>

            <c:if test="${!empty listMeals}">
                <c:forEach items="${listMeals}"
                           var="meal">
                    <tr style="color:${meal.exceed ? 'red' : 'green'}">
                        <%--<td>
                            <fmt:parseDate value="${ mealWE.dateTime }" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime"
                                           type="both"/>
                            <fmt:formatDate pattern="dd.MM.yyyy HH:mm" value="${ parsedDateTime }"/>
                        </td>--%>
                        <td>${meal.dateTime}</td>
                        <td>${meal.description}</td>
                        <td>${meal.calories}</td>
                        <%--<td><a href="<c:url value='/edit/${meal.dateTime}'/>">Изменить</a></td>--%>
                        <%--<td><a href="<c:url value='/remove/${meal.dateTime}'/>">Удалить</a></td>--%>
                    </tr>
                </c:forEach>
            </c:if>
        </table>
    </td>
</tr>
</body>
</html>
