<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<section id="slider"><!--slider-->
  <div class="container">
    <div class="row">
      <div class="col-sm-12">
        <div id="slider-carousel" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#slider-carousel" data-slide-to="1"></li>
            <li data-target="#slider-carousel" data-slide-to="2"></li>
          </ol>

          <div class="carousel-inner">
            <div class="item active">
              <div class="col-sm-6">
                <h1><spring:message code="resource.bookshop_content"/></h1>
                <h2><spring:message code="resource.find_content"/></h2>
                <p><spring:message code="resource.allbooks_content"/></p>
                <button type="button" class="btn btn-default get"><spring:message code="resource.getitnow"/></button>
              </div>
              <div class="col-sm-6">
                <img src="resources/images/home/girl1.jpg" class="girl img-responsive" alt="" />
                <img src="resources/images/home/pricing.png"  class="pricing" alt="" />
              </div>
            </div>
            <div class="item">
              <div class="col-sm-6">
                <h1><spring:message code="resource.bookshop_content"/></h1>
                <h2><spring:message code="resource.find_content"/></h2>
                <p><spring:message code="resource.allbooks_content"/></p>
                <button type="button" class="btn btn-default get"><spring:message code="resource.getitnow"/></button>
              </div>
              <div class="col-sm-6">
                <img src="resources/images/home/girl2.jpg" class="girl img-responsive" alt="" />
                <img src="resources/images/home/pricing.png"  class="pricing" alt="" />
              </div>
            </div>

            <div class="item">
              <div class="col-sm-6">
                <h1><spring:message code="resource.bookshop_content"/></h1>
                <h2><spring:message code="resource.find_content"/></h2>
                <p><spring:message code="resource.allbooks_content"/></p>
                <button type="button" class="btn btn-default get"><spring:message code="resource.getitnow"/></button>
              </div>
              <div class="col-sm-6">
                <img src="resources/images/home/girl3.jpg" class="girl img-responsive" alt="" />
                <img src="resources/images/home/pricing.png" class="pricing" alt="" />
              </div>
            </div>

          </div>

          <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
            <i class="fa fa-angle-left"></i>
          </a>
          <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
            <i class="fa fa-angle-right"></i>
          </a>
        </div>

      </div>
    </div>
  </div>
</section><!--/slider-->
