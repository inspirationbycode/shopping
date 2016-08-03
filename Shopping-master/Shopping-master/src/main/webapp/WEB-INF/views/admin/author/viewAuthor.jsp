<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <script src="/resources/js/bower/jquery/dist/jquery.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
</head>
<body>
    <jsp:include page="../header.jsp"/>
    <h2 style="margin-left: 30px; margin-top: 60px">Author</h2>
    <div class="col-md-3">
        <div class="bs-callout bs-callout-def">
            <h4>Details</h4>
            <form>
                <div class="form-group">
                    <label for="firstname">First Name</label>
                    <input type="text" class="form-control" id="firstname" value="${author.firstName}">
                </div>
                <div class="form-group">
                    <label for="lastname">Last Name</label>
                    <input type="text" class="form-control" id="lastname" value="${author.lastName}">
                </div>
                <div class="form-group">
                    <label for="description">Description</label>
                    <input type="text" class="form-control" id="description" value="${author.description}">
                </div>
                <div class="form-group">
                    <label for="url">URL</label>
                    <input type="text" class="form-control" id="url" value="${author.url}">
                </div>
                <input type="hidden" name="id" value="${id}">
                <button type="submit" class="btn btn-warning btn-block">Submit</button>
            </form>
        </div>
    </div>
    <div class="col-md-4">
        <div class="bs-callout bs-callout-info">
            <h4>Comments</h4>
            <c:forEach items="${author.comments}" var="comment">
                <p class="bg-primary color-def">
                    <span class="color-def">${comment.text}</span>
                    <button type="submit" class="close color-def" aria-label="Delete"><span aria-hidden="true">&times</span></button>
                </p>
            </c:forEach>
        </div>
    </div>

    <div class="col-md-4">
        <div class="bs-callout bs-callout-warn">
            <h4>Books</h4>
            <c:forEach items="${author.books}" var="book">
                <p class="bg-warn color-def">
                    <a href="#" class="color-def">${book.name}</a>
                    <button type="submit" class="close color-def" aria-label="Delete"><span aria-hidden="true">&times</span></button>
                </p>
            </c:forEach>
            <p>
                <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#addBook">Add</button>
            </p>
        </div>
    </div>

    <div class="col-md-4">
        <div class="bs-callout bs-callout-ok">
            <h4>Genres</h4>
            <c:forEach items="${author.genres}" var="genre">
                <p class="bg-ok color-def">
                    <a href="#" class="color-def">${genre.name}</a>
                    <button type="submit" class="close color-def" aria-label="Delete"><span aria-hidden="true">&times</span></button>
                </p>
            </c:forEach>
            <p>
                <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#addGenres">Add</button>
            </p>
        </div>
    </div>


    <!-- modal add author -->
    <div id="addBook" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times</button>
                    <h4 class="modal-title">Add book</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="autors">Book</label>
                            <select id="autors" class="form-control">
                                <c:forEach var="book" items="${bookArr}">
                                    <option>${book.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-warning">Add</button>
                    <button type="submit" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
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
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="genres">Genre</label>
                            <select id="genres" class="form-control">
                                <c:forEach var="genre" items="${genreArr}">
                                    <option>${genre.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-warning">Add</button>
                    <button type="submit" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
