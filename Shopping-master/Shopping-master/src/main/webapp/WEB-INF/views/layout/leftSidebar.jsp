<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<html>
<head>
    <title></title>
</head>
<body>
  <div class="col-sm-3">
  <div class="left-sidebar">
    <h2><spring:message code="resource.category"/></h2>
    <div class="panel-group category-products" id="accordian"><!--category-productsr-->
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordian" href="#books">
              <span class="badge pull-right"><i class="fa fa-plus"></i></span>
              <spring:message code="resource.books"/>
            </a>
          </h4>
        </div>

      </div>
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordian" href="#authors">
              <span class="badge pull-right"><i class="fa fa-plus"></i></span>
              <spring:message code="resource.authors"/>
            </a>
          </h4>
        </div>
      </div>

      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordian" href="#series">
              <span class="badge pull-right"><i class="fa fa-plus"></i></span>
              <spring:message code="resource.series"/>
            </a>
          </h4>
        </div>
        <div id="series" class="panel-collapse in" style="height: auto;">
          <div class="panel-body">
            <ul>
              <li><a href="">Tales </a></li>
              <li><a href="">A Harry Hole triller </a></li>
              <li><a href="">A Shade of Vampire </a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title"><a href="#genre"><spring:message code="resource.genres"/></a></h4>
        </div>
      </div>
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title"><a href="#"><spring:message code="resource.newbooks"/></a></h4>
        </div>
      </div>
    </div><!--/category-productsr-->

    <div class="brands_products"><!--brands_products-->
      <h2><spring:message code="resource.genres"/></h2>
      <div class="brands-name">
        <ul class="nav nav-pills nav-stacked">
          <li><a href="/drama"> <span class="pull-right">(50)</span><spring:message code="resource.drama"/></a></li>
          <li><a href="/detective"> <span class="pull-right">(56)</span><spring:message code="resource.detective"/></a></li>
          <li><a href="/fairyTale"> <span class="pull-right">(27)</span><spring:message code="resource.fairytale"/></a></li>
          <li><a href="/fantasy"> <span class="pull-right">(32)</span><spring:message code="resource.fantasy"/></a></li>
          <li><a href="/horror"> <span class="pull-right">(5)</span><spring:message code="resource.horror"/></a></li>
          <li><a href="/mystery"> <span class="pull-right">(9)</span><spring:message code="resources.mystery"/></a></li>
          <li><a href="/shortStory"> <span class="pull-right">(4)</span><spring:message code="resource.shorttstory"/></a></li>
        </ul>
      </div>
    </div><!--/brands_products-->
  </div>
</div>
</body>
</html>
