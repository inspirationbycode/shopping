<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="border" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="/resources/css/prettyPhoto.css" rel="stylesheet">
<link href="/resources/css/price-range.css" rel="stylesheet">
<link href="/resources/css/animate.css" rel="stylesheet">
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/responsive.css" rel="stylesheet">

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<section>
<div class="col-sm-4">
  <div class="signup-form"><!--sign up form-->
    <h2><spring:message code='resource.add_address'/></h2>
    <form:form action="address" method="post" commandName="userAddress">
    <table cellpadding="3pt">
      <tr>
        <td><spring:message code='resource.city'/> :</td>
        <td><input type="text" name="city" size="30" required/></td>
      </tr>
      <tr>
        <td><spring:message code='resource.region'/> :</td>
        <td><input type="text" name="region" size="30" required/></td>
      </tr>
      <tr>
        <td><spring:message code='resource.street'/>:</td>
        <td><input type="text" name="street" size="30"  required/></td>
      </tr>
      <tr>
        <td><spring:message code='resource.house'/>:</td>
        <td><input type="text" name="house" size="30"  required/></td>
      </tr>
      <tr>
        <td><spring:message code='resource.flat'/>:</td>
        <td><input type="text" name="flat" size="30" required/></td>
      </tr>
      <tr>
        <td><spring:message code='resource.zip'/>:</td>
        <td><input type="text" name="zip" size="30" required/></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><input type="submit" value="<spring:message code='resource.Submit'/>"/></td>
      </tr>
    </table>

    </form>
  </div><!--/sign up form-->
  </form:form>
</div>
</section>
<%--<jsp:include page="/WEB-INF/views/layout/footer.jsp" />--%>