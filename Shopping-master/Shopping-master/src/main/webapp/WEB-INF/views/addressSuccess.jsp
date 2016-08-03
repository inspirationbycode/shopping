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
<section>
    <div style="text-align: center;">
<div class="col-sm-4">
  <div class="signup-form">


<div align="center">
  <table border="0">
    <tr>
      <td colspan="2" align="center"><h2><spring:message code='resource.address_Succeeded'/></h2></td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <h3><spring:message code='resource.details_address'/>:</h3>
      </td>
    </tr>
    <tr>
      <td><spring:message code='resource.city'/>:</td>
      <td>${userAddress.city}</td>
    </tr>
    <tr>
      <td><spring:message code='resource.region'/> :</td>
      <td>${userAddress.region}</td>
    </tr>
    <tr>
      <td><spring:message code='resource.street'/>:</td>
      <td>${userAddress.street}</td>
    </tr>
    <tr>
      <td><spring:message code='resource.house'/>:</td>
      <td>${userAddress.house}</td>
    </tr>
    <tr>
      <td><spring:message code='resource.flat'/>:</td>
      <td>${userAddress.flat}</td>
    </tr>
    <tr>
      <td><spring:message code='resource.zip'/>:</td>
      <td>${userAddress.zip}</td>
    </tr>
  </table>
</div>
