<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="border" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="/resources/css/prettyPhoto.css" rel="stylesheet">
<link href="/resources/css/price-range.css" rel="stylesheet">
<link href="/resources/css/animate.css" rel="stylesheet">
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/responsive.css" rel="stylesheet">

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<section id="form"><!--form-->
    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-1">
                <div class="login-form">
                    <!--login form-->
                    <h2>Login to your account</h2>
                    <c:out value="${error}" />
                    <form:form method="post" name="loginForm">
                        <input type="email" placeholder="Email"  name="email" required/>
                        <input type="password" placeholder="Password" name="password" required />
                            <span>
                                <input type="checkbox" class="checkbox">
                                Keep me signed in
                            </span>
                        <button type="submit" class="btn btn-default">Login</button>
                        <input type="hidden" name="${_csrf.parameterName}"
                               value="${_csrf.token}" />
                    </form:form>
                </div>
                <!--/login form-->
            </div>
            <div class="col-sm-1">
                <h2 class="or">OR</h2>
            </div>
            <div class="col-sm-4">
                <div class="signup-form"><!--sign up form-->
                    <h2>New User Signup!</h2>
                    <c:out value="${message}" />
                    <form:form action="register" method="post" commandName="userForm">
                        <input type="text" placeholder="First name" name="firstname" required/>
                        <input type="text" placeholder="Last name" name="lastname" required/>
                        <input type="email" placeholder="Email"  name="email"  required/>
                        <input type="password" placeholder="password"  name="password" required/>
                        <input type="password" placeholder="Password confirm"  name="confirmPassword" required/>
                        <button type="submit" class="btn btn-default">Signup</button>
                    </form:form>
                </div>
                <!--/sign up form-->
            </div>

        </div>
    </div>
</section>
<!--/form-->