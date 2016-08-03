<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Orders</title>
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="/resources/css/price-range.css" rel="stylesheet">
    <link href="/resources/css/animate.css" rel="stylesheet">
    <link href="/resources/css/main.css" rel="stylesheet">
    <link href="/resources/css/responsive.css" rel="stylesheet">
    <script src="/resources/js/bower/jquery/dist/jquery.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
<c:forEach items="${orders}" var="order">
    <div class="col-md-4">
        <div class="bs-callout bs-callout-info">
            <button type="submit" class="close" aria-label="Delete"><span aria-hidden="true">&times</span></button>
            <h4>Order #${order.id}</h4>
            <c:forEach var="ser" items="${order.books}">
                <p class="bg-primary color-def">
                    <span class="color-def">${ser.name}</span>
                    <button type="submit" class="close color-def" aria-label="Delete"><span aria-hidden="true">&times</span></button>
                </p>
            </c:forEach>
            <p><h4>Status: ${order.status}</h4></p>
            <p>
                <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#addGenres">Submit</button>
            </p>
        </div>
    </div>

    <!-- modal genres -->
    <div id="addGenres" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times</button>
                    <h4 class="modal-title">Add genre</h4>
                </div>
                <form>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="name">Genre</label>
                            <input id="name" class="form-control" type="text"/>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-warning">Add</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</c:forEach>

</body>
</html>

