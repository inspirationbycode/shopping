<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="/resources/css/price-range.css" rel="stylesheet">
    <link href="/resources/css/animate.css" rel="stylesheet">
    <link href="/resources/css/main.css" rel="stylesheet">
    <link href="/resources/css/responsive.css" rel="stylesheet">
</head>
<body>
    <div>
        <jsp:include page="header.jsp"/>
        <button class="btn btn-info" style="margin: 20px 10px" type="submit">Add New</button>
        <div>
            <div class="bs-example" data-example-id="striped-table">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Date</th>
                        <th>URL</th>
                        <th colspan="2" style="text-align: center">Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="item" items="${books}">
                            <tr>
                                <th scope="row">${item.id}</th>
                                <td>${item.name}</td>
                                <td>${item.description}</td>
                                <td>${item.date}</td>
                                <td>${item.url}</td>
                                <form method="get" action="/viewBook">
                                    <input type="hidden" name="bookId" value="${item.id}"/>
                                    <input type="hidden" name="type" value="up"/>
                                    <td style="text-align: center"><button class="btn btn-info" type="submit">Edit</button></td>
                                </form>
                                <form method="get" action="deleteBook">
                                    <input type="hidden" name="bookId" value="${item.id}"/>
                                    <td style="text-align: center"><button class="btn btn-danger" type="submit">Delete</button></td>
                                </form>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
    </div>
</body>
</html>
