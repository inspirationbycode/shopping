<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Author</title>
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
    <jsp:include page="../header.jsp"/>
    <div>
        <div class="bs-example" data-example-id="striped-table">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Description</th>
                        <th>URL</th>
                        <th colspan="2" style="text-align: center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="author" items="${authors}">
                    <tr>
                        <th scope="row">${author.id}</th>
                        <td>${author.firstName}</td>
                        <td>${author.lastName}</td>
                        <td>${author.description}</td>
                        <td>${author.url}</td>
                        <form method="get" action="/viewAuthor">
                            <input type="hidden" name="authorId" value="${author.id}"/>
                            <input type="hidden" name="type" value="up"/>
                            <td style="text-align: center"><button class="btn btn-info" type="submit">Edit</button></td>
                        </form>
                        <form method="get" action="/deleteAuthor">
                            <input type="hidden" name="authorId" value="${author.id}"/>
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
