<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="border" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="/resources/css/prettyPhoto.css" rel="stylesheet">
<link href="/resources/css/price-range.css" rel="stylesheet">
<link href="/resources/css/animate.css" rel="stylesheet">
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/responsive.css" rel="stylesheet">
<div style="text-align: center;">
  <div class="shopper-informations">
    <div class="row">



<div align="center">
  <table border="0" align="center">
    <tr>
      <td colspan="2" align="center"><h2><spring:message code='resource.Registration_Succeeded'/></h2></td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <h3><spring:message code='resource.thank'/></h3>
      </td>
    </tr>
    <tr>
      <td><spring:message code='resource.first_name_title'/>:</td>
      <td>${userForm.firstname}</td>
    </tr>
    <tr>
      <td><spring:message code='resource.last_name_title'/>:</td>
      <td>${userForm.lastname}</td>
    </tr>
    <tr>
      <td>E-mail:</td>
      <td>${userForm.email}</td>
    </tr>
  </table>
</div>
          </div></div></div></div></div>
<div>.</div>
<div>. </div>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />